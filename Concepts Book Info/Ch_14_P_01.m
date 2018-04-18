% Chapter 14, Problem 1
function Ch_14_P_01 

clear
clc
close all
% 14-1	These are fundamental exercises with sound files. You should 
% not hard-code any of the answers for this problem, and you should  
% not need iteration. 
% a.	Select and read a suitable .wav file and save the sound  
% values and sampling frequency..

[x fs] = wavread('instr_piano.wav');


% b.	Create a new sound that has double the frequency of the  
% original sound and store your answer in the variable sound_Double.

sound_Double = x(round(linspace(1,end,end/2)));



% c.	Create a new sound that is the same as the original except  
% that the pitch is raised by 5 half tones.  Store your answer in the  
% variable raised_pitch.

factor = (2^(5/12));
raised_pitch = x(round(linspace(1,end,end/factor)));


% d.	We need a figure showing two views each of these three sounds,  
% created using subplot.  In the left column, plot the original sound,  
% sound_Double, and raised_pitch, labeling each plot accordingly.  
% In the right column, plot the first quarter of the values of the  
% power spectrum of each sound with the proper frequency values on  
% the horizontal axis. 
subplot(1,2,1)
N = 1000;
t = (1:N)/fs;
plot(t, x(1:N))
hold on
t1 = t / factor;
plot(t1, raised_pitch(1:N),'r')
t2 = t / 2;
plot(t2, sound_Double(1:N),'g')
legend({'original','raised','double'})
subplot(1,2,2)
N = length(x)/8;

f = (1:N) * fs / length(x);
s1 = abs(fft(x));
plot(f, s1(1:N))
hold on
f2 = f * factor;
s2 = abs(fft(raised_pitch));
plot(f2, s2(1:N),'r')
f3 = f * 2;
s3 = abs(fft(sound_Double));
plot(f3, s3(1:N),'g')


%e.	Play each of the sounds in the following order: original sound,  
% sound_Double, and raised_pitch each at the original sampling frequency.

sound([x;sound_Double;raised_pitch], fs)
