#!/usr/bin/python
import os
import fileinput


ROOT = os.path.dirname(__file__)
TMP = '/tmp'


def run_matlab(script_path, input_data):
    fifo_filepath = '%s/mscript_%s.fifo' % (TMP, os.getpid())
    if os.path.exists(fifo_filepath):
        os.unlink(fifo_filepath)
    try:
        os.mkfifo(fifo_filepath)
    except OSError, e:
        print "Failed to create FIFO: %s" % e

    pid = os.fork()
    if pid == 0:
        # child
        with open(fifo_filepath, 'w') as fifo:
            print >> fifo, input_data
    else:
        # parent
        command = 'echo "%%%s" | matlab -nosplash -nodesktop'
        command += ' -r "run(\'%s\')"'
        command = command % (fifo_filepath, script_path)
        print command
        os.system(command)


def get_input_data():
    return '\n'.join([line for line in fileinput.input()])


if __name__ == '__main__':
    script_path = os.path.join(ROOT, 'testReadInput.m')
    run_matlab(script_path, input_data=get_input_data())
