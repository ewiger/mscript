pipefilename = input('', 's');
pipefilename = pipefilename(2:end); % skip precent char as a comment
disp(['reading form: ' pipefilename])
json_input = readinput(pipefilename);
disp('Read this JSON: ');
disp(json_input);
