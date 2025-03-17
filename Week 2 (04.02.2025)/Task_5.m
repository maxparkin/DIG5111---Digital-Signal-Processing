% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[sig, fs] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 2 (04.02.2025)\Session Files\piano_middle_C.wav", native);
audioData = audioinfo("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 2 (04.02.2025)\Session Files\piano_middle_C.wav");

samplingPeriod = 1 / fs;
duration = length(sig) / fs;
time = 0:samplingPeriod:duration - samplingPeriod;
time = time.';

plot(time, sig);
xlabel("Time in Seconds");
ylabel("Amplitude");

% The amplitude has a bigger dynamic range in this plot. Orrignally the
% audio was normalised from -1 to 1. The audio now ranges above these
% limits.

% Floating point numbers allow any number of digits after a decimal point.
% Fixed point numbers have a particular amount of digits reserved before 
% and after the decimal point. Therefore, floating point numbers are able 
% to represent a wider range of numbers.

% Double precision data requires more memory, however is able to represent
% a wider range of numbers, whereas, single precision uses less memory and
% represents a smaller range of numbers.

% Signed integers allow representation of positive and negitive numbers,
% however the range is limited, due to one bit being used to represent
% whether the number is either positive or negitive.

% With native, signed integer values are used, where as normally the data
% is represented with double precision.