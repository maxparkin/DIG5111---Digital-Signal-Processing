% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

% Use the "note" function to create variables that hold the data of each
% note.
noteG = note(0.5, 35, 1);
noteB = note(0.5, 39, 1);
noteD = note(0.5, 42, 1);
noteA = note(0.7, 37, 0.5);
noteC = note(0.7, 28, 2);

% Creates a G chord by adding "noteG", "noteB" and "noteD".
chordG = noteG + noteB + noteD;

% Sets the sampling frequency and sampling period of the signal.
samplingFrequency = 11025;
samplingPeriod = 1 / samplingFrequency;

% This variable holds the gap time between each tone.
signalGap = zeros(1, 11025); % Uses the "zeros" function to create an array that just consists of zeros.

% Creates the signal array by specifying the contents (notes, chords and gaps)
% in the desired order in the signal.
signal = [chordG, signalGap, noteA, signalGap, noteC];

% Normalise the signal to prevent it from clipping.
signal = signal / max(abs(signal));

% Write the signal to an audio file.
audiowrite("tune.wav", signal, samplingFrequency);

% This code creates each note successfully and includes the gap time
% specified between each note.
