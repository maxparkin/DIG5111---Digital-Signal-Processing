% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

Amp=0.5;
f=20;
fs = 10000;
ts= 1/fs;
t = 0:1/fs:(0.1-ts);
sig1 = Amp*sin(2*pi*f*t);
subplot(4,1,1);
plot(t(1:500), sig1(1:500));
xlabel('Samples');
ylabel('Amplitude');
title('Signal 1');

Amp=0.5;
f=200;
fs = 10000;
ts= 1/fs;
t = 0:1/fs:(0.1-ts);
sig2 = Amp*sin(2*pi*f*t);
subplot(4,1,2);
plot(t(1:500), sig2(1:500));
xlabel('Samples');
ylabel('Amplitude');
title('Signal 2');

Amp=0.5;
f=1000;
fs = 10000;
ts= 1/fs;
t = 0:1/fs:(0.1-ts);
sig3 = Amp*sin(2*pi*f*t);
subplot(4,1,3);
plot(t(1:500), sig3(1:500));
xlabel('Samples');
ylabel('Amplitude');
title('Signal 3');

subplot(4,1,4)
p = plot(t(1:500), sig1(1:500), 'r-', t(1:500), sig2(1:500), 'b-*', t(1:500), sig3(1:500), 'g-square');
p(1).LineWidth = 4;
xlabel('Samples');
ylabel('Amplitude');
title(['{\color{red}Signal 1, }{\color{blue}Signal 2}{\color{black} and }{\color{green}Signal 3}']);