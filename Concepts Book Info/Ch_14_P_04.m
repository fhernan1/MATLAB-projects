% Chapter 14, Problem 4
function Ch_14_P_04 

clear
clc
close all
% 14-4	In this exercise, we will write a script to create an instrument 
% sound from scratch.  
% a.	Create a vector, t, of time values from 0 to 2 seconds with  
% length 40,000 samples.

    t = linspace(0,2,40000);


% b.	Convert the frequency of middle C (261.6 Hz) to ? radians per  
% second.

    w = 2*pi*261.6;

% c.	Compute a sound sample as cos(?t) over the range of t in part a.

    x = cos(w.*t);


% d.	Play that sound at a sample frequency of 20,000 and verify  
% that it sounds “about right.”

    fs = 20000;
 
    sound(x,fs)
    wavwrite(x, fs, 'synthetic.wav')

% e.	Perform the Fourier transform on the sound vector, establish  
% the correct axis values and prove that the sound is exactly Middle C.

    fftx = abs(real(fft(x)));
    dt = 1/20000;
    df = 1/2;
    freq = (1:40000).*df;
    plot(freq,fftx);
    [maxfreq i] = max(fftx);
    maxfreq = floor(freq(i))

end



