% Chapter 14, Problem 3
function Ch_14_P_03 

clear
clc
close all
% 14-3	Write a function named plotSound that takes in the name of a 
% sound file and produces a 1x2 figure with two plots.  The first plot 
% should be a plot of the sound in the time domain.  The second plot 
% should be a plot of the sound in the frequency domain.  Your function 
% should not return anything.
% Label the first plot 'Time Domain' and label its axes appropriately.  
% Label second plot 'Frequency Domain' and label its axes appropriately.  
% The Time Domain plot should be an amplitude vs. time plot.  For 
% simplicity make sure your time vector starts at dt (delta time) and 
% goes to n*dt (tmax) where n is the number of samples.
% The Frequency Domain plot should a power vs. frequency plot where 
% power is the absolute value of the FFT of the amplitude values.  
% For simplicity make sure your frequency vector starts at 
% df (delta frequency) and goes to n*df (2*fmax).

    plotSound('instr_piano')
end

function plotSound(filename)
    [x fs] = wavread(filename);
    n=length(x);
    dur = n./fs;
    dt = 1./fs;
    times = (1:n).*dt;
    subplot(1,2,1)
    plot(times,x)
    xlabel('Time Plot')
    ylabel('Amplitude')
    title('Time Domain')
    subplot(1,2,2)
    A = fft(x);
    df = 1/dur;
    freqs = (1:n).*df;
    plot(freqs,real(A))
    xlabel('Frequency')
    ylabel('Power')
    title('Frequency Domain')
end
