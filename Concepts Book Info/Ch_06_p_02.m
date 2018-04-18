% Chapter 6, Problem 2
function Ch_06_P_02 

clear
clc
% 6-2	Consider the problem the MATLAB system has in parsing the string:
% 	‘V=[1 2 3 4; 5,6, 7;8; 9 10]’
% Your task is to use strtok to parse this line and construct the array it
% represents.  You will write a function arrayParse that consumes a string
% and returns two variables: a string that is the variable name and an
% array.
% g.Test the function with cases like:
    str = 'row=[1 2 3 4]'
    [name arr] = arrayParse(str)
    str = 'diag=[0 0 0 1; 0 0 1; 0 1; 1]'
    [name arr] = arrayParse(str)
    str = 'empty=[]'
    [name arr] = arrayParse(str)
end

function [name arr] = arrayParse(str)
    % a.Tokenize the string first using ‘=’ as the delimiter to isolate the
    % variable name and the expression to be evaluated. Return the variable
    % name to the user and save the rest of the line as the variable str1 for
    % further processing.  You may assume that there are no spaces outside the
    % characters ‘[]’
        [name str1] = strtok(str, '=');
    % b.Tokenize str1 with ‘[‘ and ‘]’ to remove the concatenation operators
    % and save the first token as str2.
        str2 = str1(str1 ~= '[' & str1 ~= ']' & str1 ~= '=');
    % c. Tokenize str2 using ‘;’  as the delimiter.  This will produce 0 or
    % more strings that represent the rows of the array.  Save each in the
    % variable rowString. You may assume for now that the first row is the
    % longest one.
    ca = {};
    while length(str2) ~= 0
        [rowString str2] = strtok(str2, ';');
    % d.Using nested while loops, tokenize each rowString with ‘,’ and ‘ ‘ as
    % delimiters and use sscanf(…) to extract the numerical value of each array
    % entry.  Save it as rowEntry.
        row = [];
        while length(rowString) ~= 0
            rowEntry = [];
            while length(rowEntry)~=1
                [rowEntry rowString] = strtok(rowString, {',' ' '});
            end
    % e.Concatenate the rowEntry elements horizontally to produce each row of
    % the array.  If the row is too short, pad it with zeros.
            row = [row sscanf(rowEntry, '%d')];
        end
        ca = [ca, {row}];
    end
    % f.Concatenate each row vertically to produce the resulting array and
    % return that array to the caller.
    arr = [];
    if length(ca) > 0
        a = length(ca{1});
        arr = ca{1};
        for i = 2:length(ca)
            len = length(ca{i});
            in = [ca{i} zeros(1, a - len)];
            arr(i, :) = in;
        end
    end
end
