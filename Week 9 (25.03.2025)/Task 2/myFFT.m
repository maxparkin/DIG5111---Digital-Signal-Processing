% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function myFFT(audioFile, Fs)

len = length(audioFile);
fft_result = fft(audioFile);
fft_normalised = abs(fft_result) ./ len;
len_half = round(len/2);
mag = mag2db(fft_normalised);
f = (Fs / 2) * (0:len_half) / len_half;
plot(f, mag(1:len_half + 1));
xlabel('Frequency')
ylabel('dB');

end