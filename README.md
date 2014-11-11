mscript
=======

A CLI  to MATLAB engine, that treats stdin nicely  (similar to Rscript). The problem is that MATLAB and mathworks is not willing to build a nice command line interface.

Usage
-----

Code comes from <STDIN>

```bash
echo 'matlabroot' | mscript
```

or

```bash
cat examples/test.m | mscript
```

or from the file specified as the first argument

```bash
mscript examples/test.m
```

In the second case stdin is not quined by matlab engine. 

Note: this works only if you have a fully functional local install.


Install
-------

On linux, specify the full path to MATLAB like following

```bash
./configure --with-matlab=/usr/local/MATLAB/R2014a/bin --disable-dependency-tracking
make
sudo make install
```

Disclamer
---------
All of this code is licensed under MIT.

MATLAB is registered trademark of Mathworks.

