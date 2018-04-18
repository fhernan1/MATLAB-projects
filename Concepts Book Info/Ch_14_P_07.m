% Chapter 14, Problem 7
function Ch_14_P_07 

clear
clc
close all
% .14-7	Finally, you will use these tools to play your favorite song.
% a.	find the music for your favorite song and translate it into the 
% symbology of 14-6.
%   c  c#   d  d# e  f f#  g g#  a  a#  b 
% -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2  -1  
%  cc cc# dd dd# ee  ff ff# gg gg# aa aa# bb ccc 
%   0   1  2   3  4   5   6  7  8   9  10 11  12
note = [];
note = [note addNote( 'a', .5 )];
note = [note addNote( 'dd', .5 )];
note = [note addNote( 'dd', 1.5 )];
note = [note addNote( 'dd', .5 )];
note = [note addNote( 'ee', .5 )];
note = [note addNote( 'dd', .5 )];
note = [note addNote( 'ee', .75 )];
note = [note addNote( 'aa', .25 )];
note = [note addNote( 'ff#', .25 )];
note = [note addNote( 'ee', .25 )];
note = [note addNote( 'dd', 2.5 )];


% b.	Write a script that uses the playNote function to play your  
% song on the piano.
for nt = note
   [x, fs] = playNote('instr_piano.wav', nt.note, nt.fr); 
   sound(x, fs)
end

% c.	Modify playNote to use your synthetic instrument from section  
% 14-4 and save it as playSynthetic.
% d.	Write a script that uses playSynthetic to play your song in  
% futuristic style.
note(8).note = 'd';
note(9).note = 'b';
note(9).fr = 0.5;
note(10).note = 'a';
note(10).fr = 2.5;
note(11) = [];
for nt = note
   [x, fs] = playNote('synthetic.wav', nt.note, nt.fr); 
   sound(x, fs)
end

end


function [amplitude, fs] = playNote(fileName, str, duration)
    [x,fs] = wavread(fileName);
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

    nt = x(round(index));
    nd = min([ceil(fs * duration) length(nt)]);
    amplitude = nt(1:nd);
end

function st = addNote(str, n)
    st.note = str;
    st.fr = n;
end
