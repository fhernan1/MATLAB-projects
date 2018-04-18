% Chapter 14, Problem 2
function Ch_14_P_02 

clear
clc
close all
% 14-2	Write a function that will accept a string specifying a sound 
% file and do the following:
% a.	play back the sound
% b.	plot the sound in the time domain, titling and labeling your  
% plot appropriately.
% c.	Compute the frequency with the most energy in this file.   
% Validate your answer by plotting the lower quarter of the frequencies  
% of the Fourier transform of the sound.  Don’t forget that the Fourier  
% Transform is complex; you will need to reason with and plot the absolute  
% value of the spectrum.
% d.	Test this function with suitable .wav files.
    playsound('instr_piano.wav')
    figure
    playsound('chord.wav')
end

function freq = playsound(filename)
    [x fs] = wavread(filename);
    sound(x,fs)

    % b.	

    plot(x)
    xlabel('Time')
    ylabel('Amplitude')
    title('Amplitude-Time Plot')

    % c.	
    figure
    n = length(x);
    dur = n./fs;
    dt = 1./fs;
    A = fft(x);
    [maximum ndx] = max(abs(real(A)));
    df = 1/dur;
    freqs = (1:n).*df;
    freq = floor(freqs(ndx));
    plot(freqs,real(A))
end

