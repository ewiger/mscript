pipefilename = input('', 's');
pipefilename = pipefilename(2:end); % skip percent char as a comment
disp(['reading form: ' pipefilename])
% json_input = readinput(pipefilename);
json_input = readstdin(pipefilename);
disp('Read this JSON: ');
disp(json_input);
