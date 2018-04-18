% 6-9	We need to count the vowels in a character string. Follow these directions:
% a.	Write a function called isConsonant that takes in a letter of the
% alphabet. It returns true if the letter is a consonant, and false if it
% is a vowel. You can assume that only lowercase letters will be passed
% into the function, but you should not need to write out all the
% consonants!
% b.	Write an iterative function called countVowels that takes in a
% character string and returns the number of vowels in the array. You must
% use isConsonant in this function.
clear
clc

if isConsonant(' ')
    fprintf('space is a constant\n');
end
if ~isConsonant('b')
    fprintf('b is a constant\n');
end
if isConsonant('i')
    fprintf('i is a vowel\n');
end
disp('end of test')

n = countVowels('now is the time for all good men to vote Republican');
if n ~= 17
    fprintf('"now is the time for all good men to vote Republican" has 17 vowels\n');
end
    
