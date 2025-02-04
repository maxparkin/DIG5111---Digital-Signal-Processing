filename = 'piano_middle_C.wav';
[sig, Fs] = audioread(filename);

samples = length(sig);

duration = samples / Fs;

audioData = audioinfo(filename);