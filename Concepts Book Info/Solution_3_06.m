clear
clc

% 3.6	You are given the following three vectors:
nums1 = [7 1 3 5 32 12 1 99 10 24];
nums2 = [54 1 456 9 20 45 48 72 61 32 10 94 11];
nums3 = [44 11 25 41 84 77 998 85 2 3 15];
% Write a script to create the corresponding vectors newNums1, newNums2, and newNums3 
% containing every other element of the original vectors, starting with the first element.
% Example:
% numsEx = [6 3 56 7 8 9 445 6 7 437 357 5 4 3]
% newNumsEx => [6 56 8 445 7 357 4]
% Note: You can’t type the numbers directly into your answer; that is, if you typed
% >> newNumsEx = [6 56 8 445 7 357 4] 
% at the command prompt you won’t receive any credit.
% <begin Hint>
% Hint: The solution should look identical for each of the three vectors, with only the names 
% of the vectors changed.
% <end Hint>

newNums1 = nums1(1:2:end)
newNums2 = nums2(1:2:end)
newNums3 = nums3(1:2:end)