# Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(Recast_STAT_SRCS
    Source/Recast.cpp 
    Source/RecastAlloc.cpp 
    Source/RecastArea.cpp 
    Source/RecastContour.cpp 
    Source/RecastFilter.cpp 
<<<<<<< HEAD
    Source/RecastLayers.cpp
=======
	Source/RecastLayers.cpp
>>>>>>> origin/master
    Source/RecastMesh.cpp 
    Source/RecastMeshDetail.cpp 
    Source/RecastRasterization.cpp 
    Source/RecastRegion.cpp 
)

<<<<<<< HEAD
add_library(Recast STATIC ${Recast_STAT_SRCS})

target_include_directories(Recast
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/Include)

target_link_libraries(Recast
  PUBLIC
    zlib)

set_target_properties(Recast
    PROPERTIES
      FOLDER
        "dep")
=======
include_directories(Include)

if(WIN32)
  include_directories(
    ${CMAKE_SOURCE_DIR}/dep/zlib
  )
endif()

add_library(Recast STATIC ${Recast_STAT_SRCS})

target_link_libraries(Recast ${ZLIB_LIBRARIES})
>>>>>>> origin/master
