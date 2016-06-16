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
CollectSourceFiles(
  ${CMAKE_CURRENT_SOURCE_DIR}
  PRIVATE_SOURCES
  # Exclude
  ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders)

if (USE_COREPCH)
  set(PRIVATE_PCH_HEADER PrecompiledHeaders/sharedPCH.h)
  set(PRIVATE_PCH_SOURCE PrecompiledHeaders/sharedPCH.cpp)
endif()

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

add_definitions(-DTRINITY_API_EXPORT_SHARED)

add_library(shared
  ${PRIVATE_PCH_SOURCE}
  ${PRIVATE_SOURCES}
)

CollectIncludeDirectories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  PUBLIC_INCLUDES
  # Exclude
  ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders)

target_include_directories(shared
  PUBLIC
    ${PUBLIC_INCLUDES}
  PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(shared
  PUBLIC
    database)

set_target_properties(shared
    PROPERTIES
      FOLDER
        "server")

if( BUILD_SHARED_LIBS )
  if( UNIX )
    install(TARGETS shared
      LIBRARY
        DESTINATION lib)
  elseif( WIN32 )
    install(TARGETS shared
      RUNTIME
        DESTINATION "${CMAKE_INSTALL_PREFIX}")
  endif()
endif()

# Generate precompiled header
if (USE_COREPCH)
  add_cxx_pch(shared ${PRIVATE_PCH_HEADER} ${PRIVATE_PCH_SOURCE})
=======
if( USE_COREPCH )
  include_directories(${CMAKE_CURRENT_BINARY_DIR})
endif()

file(GLOB_RECURSE sources_DataStores DataStores/*.cpp DataStores/*.h)
file(GLOB_RECURSE sources_Dynamic Dynamic/*.cpp Dynamic/*.h)
file(GLOB_RECURSE sources_Networking Networking/*.cpp Networking/*.h)
file(GLOB_RECURSE sources_Packets Packets/*.cpp Packets/*.h)
if( WIN32 )
   file(GLOB_RECURSE sources_Service Service/*.cpp Service/*.h)
endif( WIN32 )
file(GLOB sources_localdir *.cpp *.h)

#
# Build shared sourcelist
#

if (USE_COREPCH)
  set(shared_STAT_PCH_HDR PrecompiledHeaders/sharedPCH.h)
  set(shared_STAT_PCH_SRC PrecompiledHeaders/sharedPCH.cpp)
endif()

set(shared_STAT_SRCS
  ${shared_STAT_SRCS}
  ${sources_DataStores}
  ${sources_Dynamic}
  ${sources_Networking}
  ${sources_Packets}
  ${sources_Utilities}
  ${sources_Service}
  ${sources_localdir}
)

include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}/Dynamic
  ${CMAKE_CURRENT_SOURCE_DIR}/Networking
  ${CMAKE_SOURCE_DIR}/dep/cppformat
  ${CMAKE_SOURCE_DIR}/src/common/
  ${CMAKE_SOURCE_DIR}/src/common/Debugging
  ${CMAKE_SOURCE_DIR}/src/common/Logging
  ${CMAKE_SOURCE_DIR}/src/common/Utilities
  ${MYSQL_INCLUDE_DIR}
  ${OPENSSL_INCLUDE_DIR}
  ${VALGRIND_INCLUDE_DIR}
)

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

add_library(shared STATIC
  ${shared_STAT_SRCS}
  ${shared_STAT_PCH_SRC}
)

add_dependencies(shared revision_data.h)

# Generate precompiled header
if (USE_COREPCH)
  add_cxx_pch(shared ${shared_STAT_PCH_HDR} ${shared_STAT_PCH_SRC})
>>>>>>> origin/master
endif ()
