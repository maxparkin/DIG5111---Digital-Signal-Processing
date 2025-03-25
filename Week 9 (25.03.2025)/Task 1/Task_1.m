% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

signal = mychirp(500, 2000, 3, 8000);
audiowrite("chirp.wav", signal, 8000);