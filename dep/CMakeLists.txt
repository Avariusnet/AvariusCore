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
if(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
  string(REGEX REPLACE "/W[0-4] " "" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
  string(REGEX REPLACE "/W[0-4] " "" CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
=======
if( MSVC )
>>>>>>> origin/master
  add_definitions(/W0)
else()
  add_definitions(-w)
endif()

<<<<<<< HEAD
add_subdirectory(threads)

if(SERVERS OR TOOLS)
  add_subdirectory(boost)
  add_subdirectory(process)
  add_subdirectory(zlib)
  add_subdirectory(g3dlite)
  add_subdirectory(recastnavigation)
  add_subdirectory(cppformat)
  add_subdirectory(SFMT)
  add_subdirectory(utf8cpp)
  add_subdirectory(valgrind)
  add_subdirectory(openssl)
  add_subdirectory(jemalloc)
endif()

if(SERVERS)
  add_subdirectory(mysql)
  add_subdirectory(readline)
  add_subdirectory(gsoap)
  add_subdirectory(efsw)
endif()

if(TOOLS)
  add_subdirectory(bzip2)
=======
if(CMAKE_SYSTEM_NAME MATCHES "Linux")
  if(SERVERS AND NOT NOJEM)
    add_subdirectory(jemalloc)  
  endif()
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Windows")
  if(TOOLS)
    add_subdirectory(bzip2)
  endif()
  if(SERVERS OR TOOLS)
    add_subdirectory(zlib)
  endif()
endif()

if(SERVERS OR TOOLS)
  add_subdirectory(g3dlite)
  add_subdirectory(recastnavigation)
  add_subdirectory(cppformat)
endif()

if(SERVERS)
  add_subdirectory(gsoap)
endif()

if(TOOLS)
>>>>>>> origin/master
  add_subdirectory(libmpq)
endif()
