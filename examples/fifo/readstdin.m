function result = readstdin()
% READSTDIN reads YAML or JSON from standard input via mscript.
% For further information see https://github.com/ewiger/mscrip
%
% Authors:
%   Yauhen Yakimovich 
%   Markus Herrmann

import yaml.*;

fprintf('%s: reading form "%s"\n', mfilename, pipe)

result = ReadYaml(pipe);

fprintf('%s: read the following from standard input: \n', mfilename);
disp(result);

end
