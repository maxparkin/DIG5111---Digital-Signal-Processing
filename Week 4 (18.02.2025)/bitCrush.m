% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function bitCrush = bitCrush(audioFile, steps)

signal = audioread(audioFile);

bitCrush = signal * steps;
bitCrush = round(bitCrush);
bitCrush = bitCrush * (1 / steps);
plot(bitCrush);

end