% Chapter 6, Problem 4
function Ch_06_P_04 

clear
clc
% 6-4	The function rot(s, n) is a simple Caesar­cipher encryption
% algorithm that replaces each English letter in places forward or backward
% along the alphabet in the strings. For example, the result of
% rot(’Baz!’,3) is ’Edc!’. An encrypted string can be deciphered by simply
% performing the inverse rotation on it, i.e., rot(’Edc!’,­3), which
% rotates each English letter in the strings three places to the left.
% Numbers, symbols, and non-­letters are not transformed. Implement the
% following function:
% function rotatedText=rot(text,n)
% To assist you as you solve this problem, you could write several
% functions as local functions in the rot.m 
% isUppercaseLetter(letter),
% getUppercaseLetter(n), 
% getLowercaseLetter(n), and 
% getPosition(letter).
% You may also wish to use the built-­in MATLAB functions isletter(…),
% find(…), and mod(…).
    text = 'Baz!'
    rotatedText = rot(text, 3)
    original = rot(rotatedText, -3)
    text = 'abcdevwxyzABCDEVWXYZ'
    rotatedText = rot(text, 3)
    original = rot(rotatedText, -3)
end


function text = rot(text, n)
    for i = 1:length(text)
        if isletter(text(i))
            if isletter(char(text(i) + n))
                text(i) = text(i) + n;
            else
                if n > 0
                    text(i) = text(i) + n - 26;
                else
                    text(i) = text(i) + n + 26;
                end
            end
        end
    end
    text = char(text);
end        
