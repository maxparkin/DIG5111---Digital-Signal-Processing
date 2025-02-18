% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

noteX = note(1, 40, 3);

steps = 2;
bitcrush = noteX * steps;
bitcrush = round(bitcrush);
bitcrush = bitcrush * (1 / steps);
plot(bitcrush);