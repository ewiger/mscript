pipefilename = input('', 's');
pipefilename = pipefilename(2:end); % skip percent char as a comment

fprintf('%s: reading form "%s"\n', mfilename, pipefilename)

std_input = readstdin(pipefilename);

fprintf('%s: read the following from standard input: \n', mfilename);
disp(std_input);
