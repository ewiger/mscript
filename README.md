mscript
=======

A CLI  to MATLAB engine, that treats stdin nicely  (similar to Rscript). The problem is that MATLAB and mathworks is not willing to build a nice command line interface.

Usage
-----

Code comes from <STDIN>

```bash
cat test.m | ./mscript
```

or from the file specified aas the first argument

```bash
./mscript test.m
```

In the second case stdin is not quined by matlab engine. 

Note: this works only if you have a fully functional local install.


Install
-------

On linux, specify the full path to MATLAB like following

```bash
./configure --with-matlab=/usr/local/MATLAB/R2014a/bin --disable-dependency-tracking
```

Disclamer
---------
All of this code is licensed under MIT.

MATLAB is ragistered trademark of Mathworks.

