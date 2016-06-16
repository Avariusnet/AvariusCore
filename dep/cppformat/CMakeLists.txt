<<<<<<< HEAD
# Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

include(CheckSymbolExists)
=======
include(CheckCXXCompilerFlag)
include(CheckSymbolExists)

set(FMT_SOURCES format.cc format.h)

# Use variadic templates
add_definitions(-DFMT_VARIADIC_TEMPLATES=1)

# Use deleted functions
add_definitions(-DFMT_USE_DELETED_FUNCTIONS=1)

# Use static assert
add_definitions(-DFMT_USE_STATIC_ASSERT=1)

>>>>>>> origin/master
if (WIN32)
  check_symbol_exists(open io.h HAVE_OPEN)
else ()
  check_symbol_exists(open fcntl.h HAVE_OPEN)
endif ()

<<<<<<< HEAD
set(FMT_SOURCES
  ${CMAKE_CURRENT_SOURCE_DIR}/cppformat/format.h
  ${CMAKE_CURRENT_SOURCE_DIR}/cppformat/format.cc)

if (HAVE_OPEN)
  set(FMT_SOURCES ${FMT_SOURCES}
    ${CMAKE_CURRENT_SOURCE_DIR}/cppformat/posix.h
    ${CMAKE_CURRENT_SOURCE_DIR}/cppformat/posix.cc)
endif()

add_library(cppformat STATIC ${FMT_SOURCES})

target_include_directories(cppformat
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(cppformat
    PROPERTIES
      FOLDER
        "dep")
=======
if (HAVE_OPEN)
  add_definitions(-DFMT_USE_FILE_DESCRIPTORS=1)
  set(FMT_SOURCES ${FMT_SOURCES} posix.cc posix.h)
endif ()

add_library(format STATIC ${FMT_SOURCES})

if (CMAKE_COMPILER_IS_GNUCXX)
  set_target_properties(format PROPERTIES COMPILE_FLAGS
    "-Wall -Wextra -Wshadow -pedantic")
endif ()
>>>>>>> origin/master
