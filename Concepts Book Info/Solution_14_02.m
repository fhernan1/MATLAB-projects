% 14-2 	Write and test a script to assemble your own speech from speeches
% in the resource center or on the Web.


[houston Fs] = wavread('sp_a13prob.wav')
prob = houston(110000:end)*2;
damn = wavread('sp_givdamn2.wav');
sdamn = [damn(1:4500); damn(8700:end)] * 0.5;
truth = wavread('sp_truth1.wav') * 0.5;
speech = [prob; sdamn; truth];
sound(speech, Fs)
