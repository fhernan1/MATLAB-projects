% Chapter 14, Problem 5
function Ch_14_P_05 

clear
clc
close all
% 14-5	A sound can be scrambled by doing the following in order:
% a.	The sound is reduced to a 1/3 of its original "volume".  
% Specifically, the amplitude was reduced to 1/3 of its original.
% b.	 The sound is reversed.  In other words, it would play backwards.
% c.	A 0.6 second gap of silence is added in the middle and then at  
% the      end.  
% d.	The final sound vector was written to a sound file with a sampling 
% frequency of 1.5 * Fs, where Fs was the original sampling frequency.
% Write a function called mysteryScrambler that takes in the name of a  
% sound file and a control string.  If the string is 'scramble', your  
% function should scramble the sound according to the above method  
% and then write it to a file named scrambled_<name of sound file>.   
% If the string is 'unscramble', your function should unscramble the  
% sound assuming that it was scrambled using the above method; this  
% means that your function will have to do the opposite of each step  
% in the reverse order. Your function should then write the unscrambled  
% sound to a file named unscrambled_<name of sound file>. If the string  
% is neither 'unscramble' or 'scramble', your function should do nothing.
% Test your solution by finding and playing an original sound, scrambling  
% it and playing the result, and then unscrambling it and playing the result. 
% 
    mysteryScrambler('sp_toto.wav','scramble');
    mysteryScrambler('scrambled_sp_toto.wav','unscramble');
end


function mysteryScrambler(soundfile, str)
    [x fs] = wavread(soundfile);
    dt = 1/fs;
    N = length(x);
    pause = zeros(0.6*fs, 1); % make a new amplitude vector, with all zeros
    if strcmpi(str, 'scramble')

        x = x./3; % one third of the original amplitude
        x = x(end:-1:1,:); % reversing the row
        x = [x(1:floor(end/2),1); pause; x(floor(end/2):end,1); pause] ;
        newfile = ['scrambled_' soundfile];
        wavwrite(x, 1.5*fs, newfile);
        sound(x, 1.5*fs);

    elseif strcmpi(str, 'unscramble')

        x = x.*3; % one third of the original amplitude
        x = x(end:-1:1,:); % reversing the row
        pause_length = length([zeros(0.6*fs, 1) zeros(0.6*fs, 1)]);
        x_length = length(x)-pause_length;
        x = [x(1:floor(x_length/2),1); 
            x(floor(x_length/2) ...
              +(pause_length/2):1:(floor(x_length/2)...
              +(pause_length/2)+(floor(x_length/2))))];
        newfile = ['unscrambled_' soundfile];
        wavwrite(x,fs/1.5,newfile);
        sound(x, fs / 1.5);
    end
end



