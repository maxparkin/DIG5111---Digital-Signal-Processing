filename = 'piano_middle_C.wav';
[sig, Fs] = audioread(filename);

audioData = audioinfo(filename);

file_size = Fs * 16 * 7.5533;

file_size_bytes = file_size / 8;