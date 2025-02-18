% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

decimal = 1:1:30;
decimal = decimal';
hexadecimal = num2hex(decimal);

table = table(decimal, hexadecimal, 'VariableNames', ["Decimal", "Hexadecimal"]);