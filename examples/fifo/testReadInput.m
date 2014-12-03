#!/usr/local/bin/mscript

% Read YAML or JSON file from standard input 
pipe = input('', 's');
pipe = pipe(2:end); % skip percent char as a comment
std_input = readstdin(pipe);
