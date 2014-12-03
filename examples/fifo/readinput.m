function res = readinput(pipename)

str = '';
fid = fopen(pipename, 'r');
tline = fgetl(fid);
while ischar(tline)
	disp(['got a line: ' tline]);
	str = strcat(str, sprintf('%s\n', tline));
    tline = fgetl(fid);    
end
fclose(fid);

res = str;

end
