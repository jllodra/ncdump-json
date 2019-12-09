# Thanks to jbeltran@socib.es for his tips on cmake and also to all the contributors

cmake_minimum_required (VERSION 2.6)

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
set(CMAKE_BUILD_TYPE Release)

# Use GNU GCC on OSX (LLVM clang won't work, see Issues on github, change "gcc-5" accordingly with your current version!)
if(APPLE)
	set(CMAKE_C_COMPILER "gcc-9")
endif()

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

if(APPLE)
	include_directories(/usr/local/Cellar/netcdf/4.6.3_1/include)
	FILE(GLOB Netcdf_LIBRARIES "/usr/local/Cellar/netcdf/4.6.3_1/lib/*.dylib")
endif()

#add_executable(ncdump-json src/ncdump.c src/vardata.c src/dumplib.c src/indent.c src/nctime.c src/nciter.c)
add_executable(ncdump-json ${Ncdump-json-src})

target_link_libraries(ncdump-json ${Netcdf_LIBRARIES})

install(TARGETS ncdump-json DESTINATION /usr/local/bin)
