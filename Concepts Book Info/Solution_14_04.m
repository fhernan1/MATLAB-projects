% 14-4	Write a script to construct a 10 second signal with sine waves of
% unit amplitude and frequencies 5 Hz and 12 Hz at a sampling rate of 1000
% samples per second. 
clear
clc

Fs = 1000;
dt = 1/Fs;
n = 10*Fs;
t = dt * (1:n);
f1 = 5;  % cycles / sec
y = sin( 2*pi*f1 * t );
f2 = 12;
y = y + sin( 2*pi*f2 * t );
plot(y)
figure
% Perform the FFT on this signal, and remove the 5000
% elements in the center of the spectrum. Then, perform the inverse
% transform, and plot and explain your observations.
Y = fft(y)
plot(abs(Y(1:1000)))
Y1 = [Y(1:2500) Y(7500:end)];
y1 = real(ifft(Y1));
figure
plot(y1)
disp('deleting half the spectrum shortened the time signal by half')
disp('and raised the frequencies to 10 and 24 Hz')
