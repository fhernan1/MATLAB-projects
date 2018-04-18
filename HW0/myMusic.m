function [ ] = myMusic( notes ) 
%enter a vector of notes ex.[a,b,cs,d,e,fs]
% myMusic will play a spicy composition of your notes and then save it

Fs=8000;

line=notes;
a=sin(2*pi*440*(0:0.000125:0.5)); 
b=sin(2*pi*493.88*(0:0.000125:0.5)); 
cs=sin(2*pi*554.37*(0:0.000125:0.5)); 
d=sin(2*pi*587.33*(0:0.000125:0.5)); 
e=sin(2*pi*659.26*(0:0.000125:0.5)); 
fs=sin(2*pi*739.99*(0:0.000125:0.5)); 
n=length(line);
song=[line,line(round(n/2):-1:1),line(end-3:1:end)]; 
sound(song, Fs);
audiowrite('song.wav',song,Fs);
end

