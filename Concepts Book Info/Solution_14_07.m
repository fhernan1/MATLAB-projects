% 14-7	Congratulations. Because of your success while working with Acme
% Clothes over the past few weeks, the company has requested your help
% again. An agent for Acme Clothes has recorded the average clothes rating
% for the company in a file, confused.wav. However, the file is scrambled.
% Your job is to read the file in, unscramble it, and play it back.
% Store your modified waveform (the one that has been unscrambled) in the
% variable mySound. Here is how the file was scrambled:
% a.	The file was amplified to 10 percent of its original amplitude.
% b.	The order of the words in the file was reversed. Each word in the
% sound file took one second to say. This means what was the first second
% in the original sound file is now the last second, and the last second in
% the original sound file is now the first second. 
% c.	The file was reversed.

clear
clc
close all
[cnf Fs] = wavread('confused.wav');
cnf = cnf*10;
n = length(cnf);
for in = 1:Fs:n
    cnf(in:in+Fs-1) = cnf(in+Fs-1:-1:in);
end
sound(cnf, Fs)



