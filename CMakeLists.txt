cmake_minimum_required (VERSION 2.6)

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
set(CMAKE_BUILD_TYPE Release)

# Uncomment to use gcc on macosx yosemite
# set(CMAKE_C_COMPILER "gcc-4.9")

# Show all compile warnings
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wno-long-long -pedantic")
link_libraries(m)

# Show message
# message(CMAKE_CXX_FLAGS: ${CMAKE_CXX_FLAGS})

project (ncdump-json)

find_package( PkgConfig REQUIRED )
pkg_check_modules( Netcdf REQUIRED netcdf )

include_directories(src)
FILE(GLOB Ncdump-json-src "src/*.c")

#add_executable(ncdump-json ncdump.c vardata.c dumplib.c indent.c nctime.c)
add_executable(ncdump-json ${Ncdump-json-src})

target_link_libraries(ncdump-json ${Netcdf_LIBRARIES})

install(TARGETS ncdump-json DESTINATION /usr/local/bin)
