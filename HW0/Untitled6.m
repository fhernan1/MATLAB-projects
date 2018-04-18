function [ song ] = myMusic( input_args ) 

Fs=8000;
%  Ts=1/Fs;
%  t=[0:Ts:0.3];
%  F_A = 440; %Frequency of note A is 440 Hz
%  F_B = 493.88;
%  F_Csharp = 554.37; 
%  F_D = 587.33;
%  F_E = 659.26;
%  F_Fsharp = 739.9;
%  notes = [F_A ; F_B; F_Csharp; F_D; F_E; F_Fsharp];
%  x = cos(2*pi*notes*t); 
%  sig = reshape(x',6*length(t),1);
%  soundsc(sig,1/Ts)
%  
 
a=sin(2*pi*440*(0:0.000125:0.5)); 
b=sin(2*pi*493.88*(0:0.000125:0.5)); 
cs=sin(2*pi*554.37*(0:0.000125:0.5)); 
d=sin(2*pi*587.33*(0:0.000125:0.5)); 
e=sin(2*pi*659.26*(0:0.000125:0.5)); 
fs=sin(2*pi*739.99*(0:0.000125:0.5)); 

line1=[a,a,e,e,fs,fs,e,e,]; 
line2=[d,d,cs,cs,b,b,a,a,]; 
line3=[e,e,d,d,cs,cs,b,b]; 

song=[line1,line2,line3,line3,line1,line2]; 
sound(song, Fs)
audiowrite('song.wav',song,Fs);
