#!/bin/sh
gcc -I. ncdump.c vardata.c dumplib.c indent.c nctime.c -o ncdump-json -lm -lnetcdf -lmfhdf -ldf -ljpeg -lhdf5_hl -lhdf5 -lz
