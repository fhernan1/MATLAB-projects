% Chapter 14, Problem 6
function Ch_14_P_06 

clear
clc
close all
% 14-6	Write a function named playNote that takes in a string 
% representing a note on the piano.  Your function should return  
% a vector representing the amplitude values of the note in addition  
% to the correct sampling frequency to be used to play it back.  You  
% should do this by modifying the sound in the provided c_note.wav  
% file which is Middle C played on the piano.  Note that the returned  
% sampling frequency should be the same as that in the c_note.wav.
% Here is a list of all the possible note names representing notes  
% that your function should work with and below that is the number  
% of half steps above/below the middle C for that note:
%   c  c#   d  d# e  f f#  g g#  a  a#  b 
% -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2  -1  
%  cc cc# dd dd# ee  ff ff# gg gg# aa aa# bb ccc 
%   0   1  2   3  4   5   6  7  8   9  10 11  12
% where cc is the middle C, ccc is 1 octave above it, c is 1 octave  
% below it. Similarly, ff is 1 octave higher than f, dd is 1 octave  
% higher than d and so on.
% For example:
    [y1 fs] = playNote('cc'); % should return a vector such that  
    sound(y1, fs) % should sound like middle C
end


function [amplitude, fs] = playNote(str)
    [x,fs] = wavread('instr_piano.wav');
    N = length(x);

    switch str
                case 'c'
            index = linspace(1,N,N*(2^(12/12)));
                case 'c#'
            index = linspace(1,N,N*(2^(11/12)));
                case 'd'
            index = linspace(1,N,N*(2^(10/12)));
                case 'd#'
            index = linspace(1,N,N*(2^(9/12)));
                case 'e'
            index = linspace(1,N,N*(2^(8/12)));
                case 'f'
            index = linspace(1,N,N*(2^(7/12)));
                case 'f#'
            index = linspace(1,N,N*(2^(6/12)));
                case 'g'
            index = linspace(1,N,N*(2^(5/12)));
                case 'g#'
            index = linspace(1,N,N*(2^(4/12)));
                case 'a'
            index = linspace(1,N,N*(2^(3/12)));
                case 'a#'
            index = linspace(1,N,N*(2^(2/12)));
                case 'b'
            index = linspace(1,N,N*(2^(1/12)));
                case 'cc'
            index = linspace(1,N,N);
             case 'cc#'
            index = linspace(1,N,N/(2^(1/12)));
                case 'dd'
            index = linspace(1,N,N/(2^(2/12)));
                case 'dd#'
            index = linspace(1,N,N/(2^(3/12)));
                case 'ee'
            index = linspace(1,N,N/(2^(4/12)));
                case 'ff'
            index = linspace(1,N,N/(2^(5/12)));
                case 'ff#'
            index = linspace(1,N,N/(2^(6/12)));
                case 'gg'
            index = linspace(1,N,N/(2^(7/12)));
                case 'gg#'
            index = linspace(1,N,N/(2^(8/12)));
                case 'aa'
            index = linspace(1,N,N/(2^(9/12)));
                case 'aa#'
            index = linspace(1,N,N/(2^(10/12)));
                case 'bb'
            index = linspace(1,N,N/(2^(11/12)));
                case 'ccc'
            index = linspace(1,N,N/(2^(12/12)));
    end

    amplitude = x(round(index));
end



