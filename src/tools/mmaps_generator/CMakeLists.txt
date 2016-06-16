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
  PRIVATE_SOURCES)

add_executable(mmaps_generator ${PRIVATE_SOURCES})

target_link_libraries(mmaps_generator
  PUBLIC
    common
    Recast
    Detour
    mpq)

CollectIncludeDirectories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  PUBLIC_INCLUDES)

target_include_directories(mmaps_generator
  PUBLIC
    ${PUBLIC_INCLUDES}
  PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR})

set_target_properties(mmaps_generator
    PROPERTIES
      FOLDER
        "tools")
=======
file(GLOB_RECURSE mmap_gen_sources *.cpp *.h)

set(mmap_gen_Includes
  ${CMAKE_BINARY_DIR}
  ${CMAKE_SOURCE_DIR}/dep/libmpq
  ${CMAKE_SOURCE_DIR}/dep/zlib
  ${CMAKE_SOURCE_DIR}/dep/bzip2
  ${CMAKE_SOURCE_DIR}/dep/g3dlite/include
  ${CMAKE_SOURCE_DIR}/dep/recastnavigation/Recast
  ${CMAKE_SOURCE_DIR}/dep/recastnavigation/Recast/Include
  ${CMAKE_SOURCE_DIR}/dep/recastnavigation/Detour
  ${CMAKE_SOURCE_DIR}/dep/recastnavigation/Detour/Include
  ${CMAKE_SOURCE_DIR}/src/server/shared
  ${CMAKE_SOURCE_DIR}/src/server/game/Conditions
  ${CMAKE_SOURCE_DIR}/src/common
  ${CMAKE_SOURCE_DIR}/src/common/Collision
  ${CMAKE_SOURCE_DIR}/src/common/Collision/Management
  ${CMAKE_SOURCE_DIR}/src/common/Collision/Maps
  ${CMAKE_SOURCE_DIR}/src/common/Collision/Models
  ${CMAKE_SOURCE_DIR}/src/common/Debugging
  ${CMAKE_SOURCE_DIR}/src/common/Threading
  ${CMAKE_SOURCE_DIR}/src/common/Utilities
)

if( WIN32 )
  set(mmap_gen_Includes
    ${mmap_gen_Includes}
    ${CMAKE_SOURCE_DIR}/dep/libmpq/win
    )
endif()

include_directories(${mmap_gen_Includes})

add_executable(mmaps_generator ${mmap_gen_sources})

target_link_libraries(mmaps_generator
  common
  g3dlib
  Recast
  Detour
  ${BZIP2_LIBRARIES}
  ${ZLIB_LIBRARIES}
  ${CMAKE_THREAD_LIBS_INIT}
  ${Boost_LIBRARIES}
)
>>>>>>> origin/master

if( UNIX )
  install(TARGETS mmaps_generator DESTINATION bin)
elseif( WIN32 )
  install(TARGETS mmaps_generator DESTINATION "${CMAKE_INSTALL_PREFIX}")
endif()
