<<<<<<< HEAD
add_definitions(-D_WIN32_WINNT=0x0601)

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
  include(${CMAKE_SOURCE_DIR}/cmake/compiler/msvc/settings.cmake)
elseif (CMAKE_CXX_PLATFORM_ID MATCHES "MinGW")
  include(${CMAKE_SOURCE_DIR}/cmake/compiler/mingw/settings.cmake)
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
  include(${CMAKE_SOURCE_DIR}/cmake/compiler/clang/settings.cmake)
=======
# Package overloads
set(BZIP2_LIBRARIES "bzip2")
set(ZLIB_LIBRARIES "zlib")

# check the CMake preload parameters (commented out by default)

# overload CMAKE_INSTALL_PREFIX if not being set properly
#if( WIN32 )
#  if( NOT CYGWIN )
#    if( NOT CMAKE_INSTALL_PREFIX )
#      set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/bin")
#    endif()
#  endif()
#endif()

if ( MSVC )
  include(${CMAKE_SOURCE_DIR}/cmake/compiler/msvc/settings.cmake)
elseif ( MINGW )
  include(${CMAKE_SOURCE_DIR}/cmake/compiler/mingw/settings.cmake)
>>>>>>> origin/master
endif()
