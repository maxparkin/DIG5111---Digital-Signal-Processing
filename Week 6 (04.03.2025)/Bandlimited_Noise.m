% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

NoiseFs = 22050;
NoiseDur = 2;
Noise = randn(NoiseFs * 2, 1);

a = 1;
b = Bandpass_Filter_1.Numerator;
stem(b);
newnoise1 = conv(Noise, b);
newnoise2 = filter(b, a, Noise);

sound(newnoise1,NoiseFs);

length1 = length(newnoise1);
length2 = length(newnoise2);