# ncdump-json — JSON (and CDL) output for netCDF

A modification of **ncdump** (netCDF 4.1.1) that adds **JSON** output.

If you omit `-j`, it behaves exactly like the original `ncdump`.

---

## Table of contents

* [Features](#features)
* [Quick start](#quick-start)
* [Usage](#usage)
* [Examples](#examples)
* [Run with Docker](#run-with-docker)
* [Install from source](#install-from-source)
* [Platform notes](#platform-notes)
* [Support & maintenance](#support--maintenance)
* [Contributors & license](#contributors--license)

---

## Features

* Drop-in replacement for `ncdump`; **use `-j` to emit JSON**.
* Streams to stdout; easy to pipe into other tools.
* Familiar `ncdump` options work as expected (e.g., `-h`, `-v var1,var2`).
* Tested with **netCDF 4.1.1**.

---

## Quick start

### Headers to JSON

```bash
ncdump-json -h -j tests/socib-buoy.nc
```

### Variable values to JSON

```bash
ncdump-json -v AIRT -j tests/socib-buoy.nc
```

Without `-j`, output is standard CDL—just like `ncdump`.

---

## Usage

```text
ncdump-json [options] file.nc

Options (common with ncdump):
  -h            # header only
  -v var1,...   # restrict to variables
  -j            # JSON output (otherwise CDL)
```

---

## Examples

### JSON header

```bash
$ ncdump-json -h -j tests/socib-buoy.nc
{"dimensions":{"time":3169},"variables":{"time":{"type":"double","dimensions":["time"],"attributes":{"standard_name":"time","units":"seconds since 1970-01-01 00:00:00","long_name":"time","_FillValue":-99999.9000000000,"axis":"T","calendar":"gregorian"}},"AIRT":{"type":"double","dimensions":["time"],"attributes":{"standard_name":"air_temperature","units":"C","long_name":"air temperature","_FillValue":-99999.9000000000,"coordinates":"time","valid_min":-15.0000000000000,"valid_max":45.0000000000000,"original_units":"C","observation_type":"measured","precision":"0.01"}},"QC_AIRT":{"type":"byte","dimensions":["time"],"attributes":{"long_name":"quality flag for air_temperature","quality_control_convention":"SOCIB Quality control Data Protocol","valid_min":0,"valid_max":9,"_FillValue":10,"flag_values":[0,1,4,9],"flag_meanings":"no_qc_performed good_data bad_data
...
```

### JSON values for a variable

```bash
$ ncdump-json -v AIRT -j tests/socib-buoy.nc
{"AIRT":[17.06,null,17.43,16.51,15.22,16.51,15.22,15.32,14.49,16.88,15.96,16.14,15.77,16.6,15.78,16.6,16.05,15.96,16.51,16.97,17.06,15.41,14.95,14.58,14.95,14.03,14.31,14.03,13.21,13.02,13.21,13.02,12.75,12.48,12.29,12.2,11.84,11.75,11.93,11.75,11.2,11.02,11.02,11.02,10.65,10.47,10.65,10.47,10.2,10.02,10.02,9.93,9.75,9.65,9.56,9.65,9.47,9.2,9.11,9.11,9.11,9.29,9.29,9.2,9.11,9.11,8.57,8.84,8.75,8.57,8.66,8.57,9.02,8.75,9.02,9.29,9.11,9.47,9.11,8.93,8.57,8.48,8.3,8.39,8.3,8.21,7.93,8.21,7.93,8.39,7.93,8.39,8.57,8.39,8.48,8.57,8.3,8.3,8.21,8.39,8.21,8.75,9.2,9.47,9.75,9.47,9.56,9.65,9.56,9.56,9.47,9.56
...
```

---

## Run with Docker

No toolchain needed. Works on Linux, macOS, and Windows 10+.

1. Install Docker: [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)
2. Clone or download this repository
3. Build the image:

```bash
docker build -t ncdump-json .
```

4. Test:

```bash
docker run -it --rm ncdump-json -j tests/socib-buoy.nc
```

5. Use with your own file (mount current dir):

```bash
docker run -it --rm -v "$PWD:/data" ncdump-json -j /data/myfile.nc
```

> **Note (paths):** On Windows, Docker volume paths use Windows conventions. Mount the folder containing your `.nc` file and reference it inside the container (e.g., `-v "C:\path\to\data:/data"` then use `/data/file.nc`).

---

## Install from source

Download the latest **release**:
[https://github.com/jllodra/ncdump-json/releases](https://github.com/jllodra/ncdump-json/releases)

Dependencies:

* `cmake`
* `libnetcdf-dev`
* `pkg-config`

Build:

```bash
cd ncdump-json
cmake .
make          # warnings may appear; that’s okay
sudo make install   # installs binary to /usr/local/bin
```

Run tests (optional):

```bash
cd tests
./run_tests.sh
```

---

## Platform notes

* Works (tested) on **Linux** and **macOS**.
* **Debian/Ubuntu:** see this comment for package specifics:
  [https://github.com/jllodra/ncdump-json/pull/16#issuecomment-562950007](https://github.com/jllodra/ncdump-json/pull/16#issuecomment-562950007)
* **FreeBSD:** see:
  [https://github.com/jllodra/ncdump-json/issues/17](https://github.com/jllodra/ncdump-json/issues/17)

Please check existing [Issues](https://github.com/jllodra/ncdump-json/issues?utf8=✓&q=is%3Aissue) before opening a new one.

---

## Support & maintenance

This project is not actively maintained. I’m grateful for the emails and issues and try to reply when I can, but I left SOCIB in 2012.

If your work depends on this tool and you need help or enhancements, feel free to reach out via e-mail and we’ll discuss options:

**Josep Llodrà** – [jlg.hrtc@gmail.com](mailto:jlg.hrtc@gmail.com)

---

## Contributors & license

Thanks to everyone who has submitted issues and pull requests—your help keeps this useful for others.

Contributors: [https://github.com/jllodra/ncdump-json/graphs/contributors](https://github.com/jllodra/ncdump-json/graphs/contributors)

Upstream netCDF copyright and license:
[http://www.unidata.ucar.edu/software/netcdf/copyright.html](http://www.unidata.ucar.edu/software/netcdf/copyright.html)

---
