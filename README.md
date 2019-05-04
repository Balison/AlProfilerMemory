# AlProfiler

AlProfiler is a memory profiler that helps programmers to understand the memory consumption of Python applications by interactive visualizations.

AlProfiler runs on top of [Pharo](http://pharo.org), the live programming environment.

## How to use

**Run AlProfiler**: Open a terminal and execute the following script: 

```
python AlProfiler.py <principalFile.py> <runFunction>

```
AlProfiler need the path of the principal python file and the running function of the application.
For example:
```
python AlProfiler.py example.py main

```
This will generate a directory AlProfiler_example with three .csv files.


**Start AlProfiler**: Open your Pharo 7 image and evaluate the following inside Pharo:
```smalltalk
Metacello new
	baseline: 'PyMemory';
	repository: 'github://Balison/AlProfilerMemory:master';
	load.
```
Select the PyMemory menu and open the directory generated by AlProfiler by clicking on the open button and choose the directory.
