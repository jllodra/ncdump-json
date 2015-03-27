Ncdump output in json (and CDL)
-------------------------------

Modified version of ncdump (netcdf 4.1.1)

Example:

```bash
$ ncdump-json tests/socib-buoy.nc -h -j
{"dimensions":{"time":3169},"variables":{"time":{"type":"double","dimensions":["time"],"attributes":{"standard_name":"time","units":"seconds since 1970-01-01 00:00:00","long_name":"time","_FillValue":-99999.9000000000,"axis":"T","calendar":"gregorian"}},"AIRT":{"type":"double","dimensions":["time"],"attributes":{"standard_name":"air_temperature","units":"C","long_name":"air temperature","_FillValue":-99999.9000000000,"coordinates":"time","valid_min":-15.0000000000000,"valid_max":45.0000000000000,"original_units":"C","observation_type":"measured","precision":"0.01"}},"QC_AIRT":{"type":"byte","dimensions":["time"],"attributes":{"long_name":"quality flag for air_temperature","quality_control_convention":"SOCIB Quality control Data Protocol","valid_min":0,"valid_max":9,"_FillValue":10,"flag_values":[0,1,4,9],"flag_meanings":"no_qc_performed good_data bad_data 
...
```

```bash
$ ncdump-json tests/socib-buoy.nc -v AIRT -j
{"AIRT":[17.06,null,17.43,16.51,15.22,16.51,15.22,15.32,14.49,16.88,15.96,16.14,15.77,16.6,15.78,16.6,16.05,15.96,16.51,16.97,17.06,15.41,14.95,14.58,14.95,14.03,14.31,14.03,13.21,13.02,13.21,13.02,12.75,12.48,12.29,12.2,11.84,11.75,11.93,11.75,11.2,11.02,11.02,11.02,10.65,10.47,10.65,10.47,10.2,10.02,10.02,9.93,9.75,9.65,9.56,9.65,9.47,9.2,9.11,9.11,9.11,9.29,9.29,9.2,9.11,9.11,8.57,8.84,8.75,8.57,8.66,8.57,9.02,8.75,9.02,9.29,9.11,9.47,9.11,8.93,8.57,8.48,8.3,8.39,8.3,8.21,7.93,8.21,7.93,8.39,7.93,8.39,8.57,8.39,8.48,8.57,8.3,8.3,8.21,8.39,8.21,8.75,9.2,9.47,9.75,9.47,9.56,9.65,9.56,9.56,9.47,9.56
...
```

It behaves exactly like the original ncdump if you omit the command-line option -j

---

Installation:

* Download latest tag, unzip. 
* Install cmake and libnetcdf-dev
* cd ncdump-json directory
* $cmake .
* $make (you might get some warnings, it is ok).
* #make install to place the bin in /usr/local/bin

you can run the tests included: cd tests; ./run_tests.sh

---

**A note from the developer**

I keep receiving emails and issues from users,
and I appreciate you all and always try to reply :)
but this is software is no longer actively being maintained
because I left my former company Socib 3 years ago.
If you rely on this software and need help you can poke us at:

http://atlantisofcode.com 

Josep Llodra – jlg.hrtc@gmail.com

---

Thanks to jbeltran@socib.es for his tips on cmake

http://www.unidata.ucar.edu/software/netcdf/copyright.html
