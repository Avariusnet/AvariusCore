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
  set(PRIVATE_PCH_HEADER PrecompiledHeaders/databasePCH.h)
  set(PRIVATE_PCH_SOURCE PrecompiledHeaders/databasePCH.cpp)
endif()

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

add_library(database
  ${PRIVATE_PCH_SOURCE}
  ${PRIVATE_SOURCES}
=======
if (NOT MYSQL_FOUND)
  message(SEND_ERROR "MySQL wasn't found on your system but it's required to build the servers!")
endif()

if( USE_COREPCH )
  include_directories(${CMAKE_CURRENT_BINARY_DIR})
endif()

file(GLOB_RECURSE sources_Database Database/*.cpp Database/*.h)
file(GLOB_RECURSE sources_Logging Logging/*.cpp Logging/*.h)
file(GLOB_RECURSE sources_Updater Updater/*.cpp Updater/*.h)

file(GLOB sources_localdir *.cpp *.h)

#
# Build shared sourcelist
#

if (USE_COREPCH)
  set(database_STAT_PCH_HDR PrecompiledHeaders/databasePCH.h)
  set(database_STAT_PCH_SRC PrecompiledHeaders/databasePCH.cpp)
endif()

set(database_STAT_SRCS
  ${database_STAT_SRCS}
  ${sources_Database}
  ${sources_Logging}
  ${sources_Updater}
>>>>>>> origin/master
)

# Do NOT add any extra include directory unless it does not create unneeded extra dependencies,
# and specially, not add any dependency to neither of these: shared, game, scripts
# This way we ensure that if either a PR does that without modifying this file,
# a compile error will be generated, either this file will be modified so it
# is detected more easily.
# While it is OK to include files from other libs as long as they don't require
# linkage (enums, defines...) it is discouraged to do so unless necessary, as it will pullute
# include_directories leading to further unnoticed dependency aditions
# Linker Depencency requirements: common
<<<<<<< HEAD
CollectIncludeDirectories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  PUBLIC_INCLUDES
  # Exclude
  ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders)

target_include_directories(database
  PUBLIC
    ${PUBLIC_INCLUDES}
  PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR})

add_definitions(-DTRINITY_API_EXPORT_DATABASE)

target_link_libraries(database
  PUBLIC
    common
    mysql)

set_target_properties(database
    PROPERTIES
      FOLDER
        "server")

if( BUILD_SHARED_LIBS )
  if( UNIX )
    install(TARGETS database
      LIBRARY
        DESTINATION lib)
  elseif( WIN32 )
    install(TARGETS database
      RUNTIME
        DESTINATION "${CMAKE_INSTALL_PREFIX}")
  endif()
endif()

# Generate precompiled header
if (USE_COREPCH)
  add_cxx_pch(database ${PRIVATE_PCH_HEADER} ${PRIVATE_PCH_SOURCE})
=======
include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/Database
  ${CMAKE_CURRENT_SOURCE_DIR}/Updater
  ${CMAKE_SOURCE_DIR}/dep/cppformat
  ${CMAKE_SOURCE_DIR}/dep/process
  ${CMAKE_SOURCE_DIR}/src/common/
  ${CMAKE_SOURCE_DIR}/src/common/Configuration
  ${CMAKE_SOURCE_DIR}/src/common/Debugging
  ${CMAKE_SOURCE_DIR}/src/common/Logging
  ${CMAKE_SOURCE_DIR}/src/common/Threading
  ${CMAKE_SOURCE_DIR}/src/common/Utilities
  ${MYSQL_INCLUDE_DIR}
  ${OPENSSL_INCLUDE_DIR}
  ${VALGRIND_INCLUDE_DIR}
)

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

add_library(database STATIC
  ${database_STAT_SRCS}
  ${database_STAT_PCH_SRC}
)

# Generate precompiled header
if (USE_COREPCH)
  add_cxx_pch(database ${database_STAT_PCH_HDR} ${database_STAT_PCH_SRC})
>>>>>>> origin/master
endif ()
