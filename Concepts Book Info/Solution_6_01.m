% 6-1	Write the function myStrcmp(s1, s2) according to the specification
% given by the MATLAB help strcmp command.
clear
clc

if ~myStrcmp('abc','abc') % -> true
    disp('myStrcmp(''abc'',''abc'') bad') 
end
if myStrcmp('abcd','abc') % -> false
    disp('myStrcmp(''abcd'',''abc'') bad') 
end
if myStrcmp('abcd','abcde') % -> false
    disp('myStrcmp(''abcde'',''abc'') bad') 
end
if myStrcmp('bbcd','abcd') % -> false
    disp('myStrcmp(''bbcd'',''abcd'') bad') 
end
if myStrcmp('abcd','abce') % -> false
    disp('myStrcmp(''abcd'',''abce'') bad') 
end
if myStrcmp('abcd','abdc') % -> false
    disp('myStrcmp(''abcd'',''abdc'') bad') 
end
disp('end of test')