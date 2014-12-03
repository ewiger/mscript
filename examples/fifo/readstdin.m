function res = readstdin(pipe)

    % READSTDIN reads YAML or JSON from standard input via mscript.
    % For further information see https://github.com/ewiger/mscrip
    %
    % Authors:
    %   Yauhen Yakimovich 
    %   Markus Herrmann

    import yaml.*;

    res = ReadYaml(pipe);

end
