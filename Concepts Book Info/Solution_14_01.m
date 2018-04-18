% 14-1	Write a script to read in the file bubble.wav and perform the following operations on its data.
clear
clc

[bubble Fs] = wavread('bubble.wav');
sound(bubble, Fs)
% Store the sampling period in the variable dt. 
dt = 1/Fs
% a.	Store the duration of the sound in the variable t. 
n = length(bubble)
t = n*dt
pause(t)
% b.	Store the number of samples in the variable n. 
% c.	Store the difference in frequency between the samples (after the FFT) in the variable df. 
df = 1/t
% d.	Store the maximum frequency in the variable f_max. 
f_max = df * n / 2
% e.	Create an array containing the frequency at each sample in the variable f.
f = fft(bubble);
% f.	Create a new sound that has double the frequency of the original sound in the variable sound_Double. 
sound_Double = bubble(1:2:end);
% g.	Create a new sound that is the same as the original except that the
% pitch is raised by five half tones. Store your answer in the variable
% raised_pitch. 
sound(sound_Double, Fs)
pause(t/2)
halfTone = 2^(1/12);
factor = halfTone^5;
index = ceil(linspace(1,n,n/factor));
raised_pitch = bubble(index);
sound(raised_pitch, Fs)
pause(t/factor)
% h.	Plot the original sound, sound_Double, and raised_pitch all in the
% same row of a figure using subplot. Label each plot accordingly.
subplot(1,3,1)
plot(bubble)
subplot(1,3,2)
plot(sound_Double)
subplot(1,3,3)
plot(raised_pitch)

% i.	Play each of the sounds at a sampling frequency of 22050 Hz in the
% following order: original sound, sound_Double, and raised_pitch.
disp('did that above')
% j.	Plot the sound waveform in both the time and frequency domains.
% Label your plots appropriately. Use figure to start a new figure, and
% subplot (one row, two columns).
figure
subplot(1,2,1)
plot(bubble)
subplot(1,2,2)
plot(real(f))
