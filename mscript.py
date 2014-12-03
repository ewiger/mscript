#!/usr/bin/env python
'''
An alternative approach based on pymatlab engine
http://molflow.com/pymatlab.html

Requires: pip install pymatlab

Put a symlink to this file into your path, i.e.

  chmod +x ./mscript.py
  ln -s ./mscript.py /usr/local/bin/mscript

'''
import fileinput
import pymatlab

mscript = ''
for line in fileinput.input():
    if line.startswith('#'):
        continue
    mscript += line
session = pymatlab.session_factory(options='-nodesktop -nosplash')
session.putvalue('MSCRIPT', mscript)
print session.getvalue('MSCRIPT')
try:
    session.run('eval(MSCRIPT)')
except Exception as error:
    print dir(error)
    print str(error)
