# Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

<<<<<<< HEAD
message("")

# Make the script module list available in the current scope
GetScriptModuleList(SCRIPT_MODULE_LIST)

# Make the native install offset available in this scope
GetInstallOffset(INSTALL_OFFSET)

# Sets the SCRIPTS_${SCRIPT_MODULE} variables
# when using predefined templates for script building
# like dynamic, static, minimal-static...
# Sets SCRIPTS_DEFAULT_LINKAGE
if (SCRIPTS MATCHES "dynamic")
  set(SCRIPTS_DEFAULT_LINKAGE "dynamic")
elseif(SCRIPTS MATCHES "static")
  set(SCRIPTS_DEFAULT_LINKAGE "static")
else()
  set(SCRIPTS_DEFAULT_LINKAGE "disabled")
endif()
# Sets SCRIPTS_USE_WHITELIST
# Sets SCRIPTS_WHITELIST
if (SCRIPTS MATCHES "minimal")
  set(SCRIPTS_USE_WHITELIST ON)
  # Whitelist which is used when minimal is selected
  list(APPEND SCRIPTS_WHITELIST Commands Spells)
endif()

# Set the SCRIPTS_${SCRIPT_MODULE} variables from the
# variables set above
foreach(SCRIPT_MODULE ${SCRIPT_MODULE_LIST})
  ScriptModuleNameToVariable(${SCRIPT_MODULE} SCRIPT_MODULE_VARIABLE)
  if (${SCRIPT_MODULE_VARIABLE} STREQUAL "default")
    if(SCRIPTS_USE_WHITELIST)
      list(FIND SCRIPTS_WHITELIST "${SCRIPT_MODULE}" INDEX)
      if (${INDEX} GREATER -1)
        set(${SCRIPT_MODULE_VARIABLE} ${SCRIPTS_DEFAULT_LINKAGE})
      else()
        set(${SCRIPT_MODULE_VARIABLE} "disabled")
      endif()
    else()
      set(${SCRIPT_MODULE_VARIABLE} ${SCRIPTS_DEFAULT_LINKAGE})
    endif()
  endif()
  # Build the Graph values
  if (${SCRIPT_MODULE_VARIABLE} MATCHES "dynamic")
    GetProjectNameOfScriptModule(${SCRIPT_MODULE} SCRIPT_MODULE_PROJECT_NAME)
    GetNativeSharedLibraryName(${SCRIPT_MODULE_PROJECT_NAME} SCRIPT_PROJECT_LIBRARY)
    list(APPEND GRAPH_KEYS ${SCRIPT_MODULE_PROJECT_NAME})
    set(GRAPH_VALUE_DISPLAY_${SCRIPT_MODULE_PROJECT_NAME} ${SCRIPT_PROJECT_LIBRARY})
    list(APPEND GRAPH_VALUE_CONTAINS_MODULES_${SCRIPT_MODULE_PROJECT_NAME} ${SCRIPT_MODULE})
  elseif(${SCRIPT_MODULE_VARIABLE} MATCHES "static")
    list(APPEND GRAPH_KEYS worldserver)
    set(GRAPH_VALUE_DISPLAY_worldserver worldserver)
    list(APPEND GRAPH_VALUE_CONTAINS_MODULES_worldserver ${SCRIPT_MODULE})
  else()
    list(APPEND GRAPH_KEYS disabled)
    set(GRAPH_VALUE_DISPLAY_disabled disabled)
    list(APPEND GRAPH_VALUE_CONTAINS_MODULES_disabled ${SCRIPT_MODULE})
  endif()
endforeach()

list(SORT GRAPH_KEYS)
list(REMOVE_DUPLICATES GRAPH_KEYS)

# Display the script graph
message("* Script configuration (${SCRIPTS}):
    |")

foreach(GRAPH_KEY ${GRAPH_KEYS})
  if (NOT GRAPH_KEY STREQUAL "disabled")
    message("    +- ${GRAPH_VALUE_DISPLAY_${GRAPH_KEY}}")
  else()
    message("    |  ${GRAPH_VALUE_DISPLAY_${GRAPH_KEY}}")
  endif()
  foreach(GRAPH_PROJECT_ENTRY ${GRAPH_VALUE_CONTAINS_MODULES_${GRAPH_KEY}})
    message("    |   +- ${GRAPH_PROJECT_ENTRY}")
  endforeach()
  message("    |")
endforeach()

# Base sources which are used by every script project
if (USE_SCRIPTPCH)
  set(PRIVATE_PCH_HEADER ScriptPCH.h)
  set(PRIVATE_PCH_SOURCE ScriptPCH.cpp)
endif ()

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

# Configures the scriptloader with the given name and stores the output in the LOADER_OUT variable.
# It is possible to expose multiple subdirectories from the same scriptloader through passing
# it to the variable arguments
function(ConfigureScriptLoader SCRIPTLOADER_NAME LOADER_OUT IS_DYNAMIC_SCRIPTLOADER)
  # Deduces following variables which are referenced by thge template:
  # TRINITY_IS_DYNAMIC_SCRIPTLOADER
  # TRINITY_SCRIPTS_FORWARD_DECL
  # TRINITY_SCRIPTS_INVOKE
  # TRINITY_CURRENT_SCRIPT_PROJECT

  # To generate export macros
  set(TRINITY_IS_DYNAMIC_SCRIPTLOADER ${IS_DYNAMIC_SCRIPTLOADER})
  # To generate forward declarations of the loading functions
  unset(TRINITY_SCRIPTS_FORWARD_DECL)
  unset(TRINITY_SCRIPTS_INVOKE)
  # The current script project which is built in
  set(TRINITY_CURRENT_SCRIPT_PROJECT ${SCRIPTLOADER_NAME})
  foreach(LOCALE_SCRIPT_MODULE ${ARGN})
    # Determine the loader function ("Add##${NameOfDirectory}##Scripts()")
    set(LOADER_FUNCTION
      "Add${LOCALE_SCRIPT_MODULE}Scripts()")
    # Generate the funciton call and the forward declarations
    set(TRINITY_SCRIPTS_FORWARD_DECL
      "${TRINITY_SCRIPTS_FORWARD_DECL}void ${LOADER_FUNCTION};\n")
    set(TRINITY_SCRIPTS_INVOKE
      "${TRINITY_SCRIPTS_INVOKE}    ${LOADER_FUNCTION};\n")
  endforeach()
  set(GENERATED_LOADER ${CMAKE_CURRENT_BINARY_DIR}/gen_scriptloader/${SCRIPTLOADER_NAME}/ScriptLoader.cpp)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/ScriptLoader.cpp.in.cmake ${GENERATED_LOADER})
  set(${LOADER_OUT} ${GENERATED_LOADER} PARENT_SCOPE)
endfunction()

# Generates the actual script projects
# Fills the STATIC_SCRIPT_MODULES and DYNAMIC_SCRIPT_MODULE_PROJECTS variables
# which contain the names which scripts are linked statically/dynamically and
# adds the sources of the static modules to the PRIVATE_SOURCES variable.
foreach(SCRIPT_MODULE ${SCRIPT_MODULE_LIST})
  GetPathToScriptModule(${SCRIPT_MODULE} SCRIPT_MODULE_PATH)
  ScriptModuleNameToVariable(${SCRIPT_MODULE} SCRIPT_MODULE_VARIABLE)

  if ((${SCRIPT_MODULE_VARIABLE} STREQUAL "disabled") OR
      (${SCRIPT_MODULE_VARIABLE} STREQUAL "static"))
    # Uninstall disabled modules
    GetProjectNameOfScriptModule(${SCRIPT_MODULE} SCRIPT_MODULE_PROJECT_NAME)
    GetNativeSharedLibraryName(${SCRIPT_MODULE_PROJECT_NAME} SCRIPT_MODULE_OUTPUT_NAME)
    list(APPEND DISABLED_SCRIPT_MODULE_PROJECTS ${INSTALL_OFFSET}/${SCRIPT_MODULE_OUTPUT_NAME})
    if (${SCRIPT_MODULE_VARIABLE} STREQUAL "static")
      # Add the module name to STATIC_SCRIPT_MODULES
      list(APPEND STATIC_SCRIPT_MODULES ${SCRIPT_MODULE})
      # Add the module content to the whole static module
      CollectSourceFiles(${SCRIPT_MODULE_PATH} PRIVATE_SOURCES)
    endif()
  elseif(${SCRIPT_MODULE_VARIABLE} STREQUAL "dynamic")
    # Generate an own dynamic module which is loadable on runtime
    # Add the module content to the whole static module
    unset(SCRIPT_MODULE_PRIVATE_SOURCES)
    CollectSourceFiles(${SCRIPT_MODULE_PATH} SCRIPT_MODULE_PRIVATE_SOURCES)
    # Configure the scriptloader
    ConfigureScriptLoader(${SCRIPT_MODULE} SCRIPT_MODULE_PRIVATE_SCRIPTLOADER ON ${SCRIPT_MODULE})
    GetProjectNameOfScriptModule(${SCRIPT_MODULE} SCRIPT_MODULE_PROJECT_NAME)
    # Add the module name to DYNAMIC_SCRIPT_MODULES
    list(APPEND DYNAMIC_SCRIPT_MODULE_PROJECTS ${SCRIPT_MODULE_PROJECT_NAME})
    # Create the script module project
    add_library(${SCRIPT_MODULE_PROJECT_NAME} SHARED
      ${PRIVATE_PCH_SOURCE}
      ${SCRIPT_MODULE_PRIVATE_SOURCES}
      ${SCRIPT_MODULE_PRIVATE_SCRIPTLOADER})
    target_link_libraries(${SCRIPT_MODULE_PROJECT_NAME}
      PUBLIC
        game)
    set_target_properties(${SCRIPT_MODULE_PROJECT_NAME}
      PROPERTIES
        FOLDER
          "scripts")

    if(UNIX)
      install(TARGETS ${SCRIPT_MODULE_PROJECT_NAME}
        DESTINATION ${INSTALL_OFFSET}
        COMPONENT ${SCRIPT_MODULE_PROJECT_NAME})
    elseif(WIN32)
      install(TARGETS ${SCRIPT_MODULE_PROJECT_NAME}
        RUNTIME DESTINATION ${INSTALL_OFFSET}
        COMPONENT ${SCRIPT_MODULE_PROJECT_NAME})
      if(MSVC)
        # Place the script modules in the script subdirectory
        set_target_properties(${SCRIPT_MODULE_PROJECT_NAME} PROPERTIES
          RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/bin/Debug/scripts
          RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/bin/Release/scripts
          RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_BINARY_DIR}/bin/RelWithDebInfo/scripts
          RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_BINARY_DIR}/bin/MinSizeRel/scripts)
      endif()
    endif()
  else()
    message(FATAL_ERROR "Unknown value \"${${SCRIPT_MODULE_VARIABLE}}\"!")
  endif()
endforeach()

# Add the dynamic script modules to the worldserver as dependency
set(WORLDSERVER_DYNAMIC_SCRIPT_MODULES_DEPENDENCIES ${DYNAMIC_SCRIPT_MODULE_PROJECTS} PARENT_SCOPE)

ConfigureScriptLoader("static" SCRIPT_MODULE_PRIVATE_SCRIPTLOADER OFF ${STATIC_SCRIPT_MODULES})

add_library(scripts STATIC
  ScriptLoader.h
  ${PRIVATE_PCH_SOURCE}
  ${SCRIPT_MODULE_PRIVATE_SCRIPTLOADER}
  ${PRIVATE_SOURCES})

target_link_libraries(scripts
  PUBLIC
    game-interface)

target_include_directories(scripts
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(scripts
  PROPERTIES
    FOLDER
      "scripts")

# Generate precompiled header
if (USE_SCRIPTPCH)
  list(APPEND ALL_SCRIPT_PROJECTS scripts ${DYNAMIC_SCRIPT_MODULE_PROJECTS})
  add_cxx_pch("${ALL_SCRIPT_PROJECTS}" ${PRIVATE_PCH_HEADER} ${PRIVATE_PCH_SOURCE})
endif()

# Remove all shared libraries in the installl directory which
# are contained in the static library already.
if (DISABLED_SCRIPT_MODULE_PROJECTS)
  install(CODE "
    foreach(SCRIPT_TO_UNINSTALL ${DISABLED_SCRIPT_MODULE_PROJECTS})
      if (EXISTS \"\${SCRIPT_TO_UNINSTALL}\")
        message(STATUS \"Uninstalling: \${SCRIPT_TO_UNINSTALL}\")
        file(REMOVE \"\${SCRIPT_TO_UNINSTALL}\")
      endif()
    endforeach()
  ")
endif()

message("")
=======
# Enable precompiled headers when using the GCC compiler.

if (USE_SCRIPTPCH)
  set(scripts_STAT_PCH_HDR PrecompiledHeaders/ScriptPCH.h)
  set(scripts_STAT_PCH_SRC PrecompiledHeaders/ScriptPCH.cpp)
endif ()

message(STATUS "SCRIPT PREPARATIONS")

macro(PrepareScripts name out)
  file(GLOB_RECURSE found
    ${name}/*.h
    ${name}/*.cpp
  )
  list(APPEND ${out} ${found})
  message(STATUS "  -> Prepared: ${name}")
endmacro(PrepareScripts)

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  ../game/AI/ScriptedAI/ScriptedEscortAI.cpp
  ../game/AI/ScriptedAI/ScriptedCreature.cpp
  ../game/AI/ScriptedAI/ScriptedFollowerAI.cpp
  ../game/Maps/AreaBoundary.cpp
)

PrepareScripts(Spells scripts_STAT_SRCS)
PrepareScripts(Commands scripts_STAT_SRCS)

if(SCRIPTS)
  PrepareScripts(Custom scripts_STAT_SRCS)
  PrepareScripts(World scripts_STAT_SRCS)
  PrepareScripts(OutdoorPvP scripts_STAT_SRCS)
  PrepareScripts(EasternKingdoms scripts_STAT_SRCS)
  PrepareScripts(Kalimdor scripts_STAT_SRCS)
  PrepareScripts(Outland scripts_STAT_SRCS)
  PrepareScripts(Northrend scripts_STAT_SRCS)
  PrepareScripts(Events scripts_STAT_SRCS)
  PrepareScripts(Pet scripts_STAT_SRCS)
endif()

message(STATUS "SCRIPT PREPARATION COMPLETE")
message("")

include_directories(
  ${CMAKE_SOURCE_DIR}/dep/cppformat
  ${CMAKE_SOURCE_DIR}/dep/g3dlite/include
  ${CMAKE_SOURCE_DIR}/dep/recastnavigation/Detour/Include
  ${CMAKE_SOURCE_DIR}/src/common/
  ${CMAKE_SOURCE_DIR}/src/common/Collision
  ${CMAKE_SOURCE_DIR}/src/common/Collision/Management
  ${CMAKE_SOURCE_DIR}/src/common/Collision/Maps
  ${CMAKE_SOURCE_DIR}/src/common/Collision/Models
  ${CMAKE_SOURCE_DIR}/src/common/Configuration
  ${CMAKE_SOURCE_DIR}/src/common/Debugging
  ${CMAKE_SOURCE_DIR}/src/common/Logging
  ${CMAKE_SOURCE_DIR}/src/common/Threading
  ${CMAKE_SOURCE_DIR}/src/common/Utilities
  ${CMAKE_SOURCE_DIR}/src/server/database/Database
  ${CMAKE_SOURCE_DIR}/src/server/game/Accounts
  ${CMAKE_SOURCE_DIR}/src/server/game/Achievements
  ${CMAKE_SOURCE_DIR}/src/server/game/Addons
  ${CMAKE_SOURCE_DIR}/src/server/game/AI
  ${CMAKE_SOURCE_DIR}/src/server/game/AI/CoreAI
  ${CMAKE_SOURCE_DIR}/src/server/game/AI/PlayerAI
  ${CMAKE_SOURCE_DIR}/src/server/game/AI/ScriptedAI
  ${CMAKE_SOURCE_DIR}/src/server/game/AI/SmartScripts
  ${CMAKE_SOURCE_DIR}/src/server/game/AuctionHouse
  ${CMAKE_SOURCE_DIR}/src/server/game/AuctionHouseBot
  ${CMAKE_SOURCE_DIR}/src/server/game/Battlefield
  ${CMAKE_SOURCE_DIR}/src/server/game/Battlefield/Zones
  ${CMAKE_SOURCE_DIR}/src/server/game/Battlegrounds
  ${CMAKE_SOURCE_DIR}/src/server/game/Battlegrounds/Zones
  ${CMAKE_SOURCE_DIR}/src/server/game/Chat
  ${CMAKE_SOURCE_DIR}/src/server/game/Chat/Channels
  ${CMAKE_SOURCE_DIR}/src/server/game/Combat
  ${CMAKE_SOURCE_DIR}/src/server/game/Conditions
  ${CMAKE_SOURCE_DIR}/src/server/game/DataStores
  ${CMAKE_SOURCE_DIR}/src/server/game/DungeonFinding
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Corpse
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Creature
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/DynamicObject
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/GameObject
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Item
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Item/Container
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Object
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Object/Updates
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Pet
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Player
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Transport
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Unit
  ${CMAKE_SOURCE_DIR}/src/server/game/Entities/Vehicle
  ${CMAKE_SOURCE_DIR}/src/server/game/Events
  ${CMAKE_SOURCE_DIR}/src/server/game/Globals
  ${CMAKE_SOURCE_DIR}/src/server/game/Grids
  ${CMAKE_SOURCE_DIR}/src/server/game/Grids/Cells
  ${CMAKE_SOURCE_DIR}/src/server/game/Grids/Notifiers
  ${CMAKE_SOURCE_DIR}/src/server/game/Groups
  ${CMAKE_SOURCE_DIR}/src/server/game/Guilds
  ${CMAKE_SOURCE_DIR}/src/server/game/Handlers
  ${CMAKE_SOURCE_DIR}/src/server/game/Instances
  ${CMAKE_SOURCE_DIR}/src/server/game/Loot
  ${CMAKE_SOURCE_DIR}/src/server/game/Mails
  ${CMAKE_SOURCE_DIR}/src/server/game/Maps
  ${CMAKE_SOURCE_DIR}/src/server/game/Miscellaneous
  ${CMAKE_SOURCE_DIR}/src/server/game/Movement
  ${CMAKE_SOURCE_DIR}/src/server/game/Movement/MovementGenerators
  ${CMAKE_SOURCE_DIR}/src/server/game/Movement/Spline
  ${CMAKE_SOURCE_DIR}/src/server/game/Movement/Waypoints
  ${CMAKE_SOURCE_DIR}/src/server/game/OutdoorPvP
  ${CMAKE_SOURCE_DIR}/src/server/game/Pools
  ${CMAKE_SOURCE_DIR}/src/server/game/Quests
  ${CMAKE_SOURCE_DIR}/src/server/game/Reputation
  ${CMAKE_SOURCE_DIR}/src/server/game/Scripting
  ${CMAKE_SOURCE_DIR}/src/server/game/Server
  ${CMAKE_SOURCE_DIR}/src/server/game/Server/Protocol
  ${CMAKE_SOURCE_DIR}/src/server/game/Skills
  ${CMAKE_SOURCE_DIR}/src/server/game/Spells
  ${CMAKE_SOURCE_DIR}/src/server/game/Spells/Auras
  ${CMAKE_SOURCE_DIR}/src/server/game/Texts
  ${CMAKE_SOURCE_DIR}/src/server/game/Tickets
  ${CMAKE_SOURCE_DIR}/src/server/game/Tools
  ${CMAKE_SOURCE_DIR}/src/server/game/Warden
  ${CMAKE_SOURCE_DIR}/src/server/game/Weather
  ${CMAKE_SOURCE_DIR}/src/server/game/World
  ${CMAKE_SOURCE_DIR}/src/server/shared
  ${CMAKE_SOURCE_DIR}/src/server/shared/DataStores
  ${CMAKE_SOURCE_DIR}/src/server/shared/Dynamic
  ${CMAKE_SOURCE_DIR}/src/server/shared/Dynamic/LinkedReference
  ${CMAKE_SOURCE_DIR}/src/server/shared/Packets
  ${MYSQL_INCLUDE_DIR}
  ${VALGRIND_INCLUDE_DIR}
)

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

add_library(scripts STATIC
  ${scripts_STAT_SRCS}
  ${scripts_STAT_PCH_SRC}
)

# Generate precompiled header
if (USE_SCRIPTPCH)
  add_cxx_pch(scripts ${scripts_STAT_PCH_HDR} ${scripts_STAT_PCH_SRC})
endif()
>>>>>>> origin/master
