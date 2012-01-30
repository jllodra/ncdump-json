cmake_minimum_required (VERSION 2.6)
project (ncdump-json)

include_directories(.)

#add_definitions(-g -O2 -fsigned-char -freg-struct-return -Wall -W -Wshadow -Wstrict-prototypes -Wpointer-arith -Wcast-qual -Winline)

add_executable(ncdump-json ncdump.c vardata.c dumplib.c indent.c nctime.c)

target_link_libraries(ncdump-json netcdf)

install(TARGETS ncdump-json DESTINATION /usr/local/bin)
