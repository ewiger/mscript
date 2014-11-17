disp('this is correct')
disp('this is an error)

a . 10

disp('this is again correct')


try
   eval('1+')
catch ME
    fprintf('mscript execution has failed.\nException(%s): %s\n', ME.identifier, ME.message);
end