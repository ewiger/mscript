% #!/usr/local/bin/mscript

pipe_input = input('', 's');
% pipe_input = pipe_input(2:end); % skip percent char as a comment
disp(pipe_input)
disp(class(pipe_input))
disp(size(pipe_input))

result = yaml.ReadYaml(pipe_input, 0, 0, 1);
disp(result)
disp(class(result))
% result = readstdin(pipe_input);
