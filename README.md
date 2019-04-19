# AlProfiler

AlProfiler is a memory profiler that helps programmers to understand the memory consumption of Python applications by interactive visualizations.

AlProfiler runs on top of [Pharo](http://pharo.org), the live programming environment.

## How to use

**Build AlProfiler**: Clone this repository and execute `./build.sh` in a terminal.

**Run AlProfiler**: Open a terminal and execute the following script: 

```
python AlProfiler.py <principalFile.py> <runFunction>

```
AlProfiler need the path of the principal python file and the running function of the application.
For example:
```
python AlProfiler.py example.py main

```
This will generate a directory AlProfiler_example with two .csv files.

**Start AlProfiler**: Once the build finished. Use `./start.sh`to open the application, where you can open the  directory generated by AlProfiler by clicking on the open button and choose the directory

## Development

There are two main alternatives to get a Pharo image with AlProfiler loaded on it:

* Execute `./build.sh` in a terminal, then execute `./pharo-ui Pharo.image`.
* Download a Pharo 7 image by yourself, then load the BaselineOfHunter.

For the second alternative, you can evaluate the following inside Pharo:

```smalltalk
Metacello new
	baseline: 'PyMemory';
	repository: 'github://Balison/AlProfilerMemory:master';
	load.
```
