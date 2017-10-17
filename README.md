PiCrossCompile
==============
This is a simple program for cross compiling raspberry pi.  

# Setup Cross Compiler
This script will clone cross compiler toolchain for pi.
```
$ ./setupToolchain.sh
```

# Build
Use Makefile  
```
$ make 
```
or  
Use CMake  
```
$ mkdir build && cd build
$ cmake ..
$ make
```

Put the "bin/hello_pi" binary to raspberry pi and execute it !.  