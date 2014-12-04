#!/usr/bin/env python
import sys
import json
import yaml

# read YAML from standard input
pipe_input = yaml.load(sys.stdin)

# write JSON (one line!) to standard output
pipe_output = json.dumps(pipe_input)
print(pipe_output)
