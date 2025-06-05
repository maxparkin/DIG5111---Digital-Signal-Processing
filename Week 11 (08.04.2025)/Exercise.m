% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

fs = 4000;
duration = 3;
ts = 1 / fs;
time = 0:ts:3;

f1 = 200;
sig1 = sin(2 * pi * f1 * time);

f2 = 800;
sig2 = sin(2 * pi * f2 * time);

sig = sig1 + sig2;
sig = sig * 1 / max(abs(sig));

fc = 300;
fc = fc / (fs / 2);
points = 60;
negativePoints = points - points - points;

b = fc * sinc(fc * (negativePoints:points));
a = 1;

fvtool(b, a);
filtered_rectangular_sig = filter(b, a, sig);

% FFT of the signal
L=length(filtered_rectangular_sig);
Y=fft(filtered_rectangular_sig);
M2 = abs(Y)/(L);
M1 = M2(1:L/2+1);
M1(2:end-1) = 2*M1(2:end-1);
fa = fs*(0:(L/2))/L;
Mag = mag2db(M1);
figure("Name", "Rectangular Window")
plot(fa,Mag);
title('FFT of signal (dB)')
xlabel('Frequency Hz')
ylabel('dB')

hammingWindow = hamming(length(b));
hammingWindow = hammingWindow';
hamming_b = hammingWindow .* b;
fvtool(hamming_b, a);

filtered_hamming_sig = filter(hamming_b, a, sig);

% FFT of the signal
L=length(filtered_hamming_sig);
Y=fft(filtered_hamming_sig);
M2 = abs(Y)/(L);
M1 = M2(1:L/2+1);
M1(2:end-1) = 2*M1(2:end-1);
fa = fs*(0:(L/2))/L;
Mag = mag2db(M1);
figure("Name", "Hamming Window")
plot(fa,Mag);
title('FFT of signal (dB)')
xlabel('Frequency Hz')
ylabel('dB')
