% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function frequencyCompare(audioFile1, audioFile2)

% Read both audio files and their sample rates.
[audioFile_1, audioFile_1_fs] = audioread(audioFile1);
[audioFile_2, audioFile_2_fs] = audioread(audioFile2);

% Convert number of samples to time on each audio file array.
audioFile_1_time = (0:length(audioFile_1) - 1) / audioFile_1_fs;
audioFile_2_time = (0:length(audioFile_2) - 1) / audioFile_2_fs;

% Convert the magnitude scale to dB on both audio file arrays.
dB_1 = mag2db(audioFile_1(:, 1));
dB_2 = mag2db(audioFile_2(:, 1));

audioFile_1_len = length(audioFile_1);
SSC_1 = fft(audioFile_1);
SSR_1 = abs(SSC_1) ./ audioFile_1_len;
L_1 = round(audioFile_1_len / 2);
Mag_1 = mag2db(SSR_1);
f_1 = (audioFile_1_fs / 2) * (0:L_1) / L_1;

audioFile_2_len = length(audioFile_2);
SSC_2 = fft(audioFile_2);
SSR_2 = abs(SSC_2) ./ audioFile_2_len;
L_2 = round(audioFile_2_len / 2);
Mag_2 = mag2db(SSR_2);
f_2 = (audioFile_2_fs / 2) * (0:L_2) / L_2;

figure("Name", "Frequency Comparison");

subplot(3, 2, 1);
plot(audioFile_1_time, dB_1);
xlabel("Time (seconds)");
ylabel("Amplitude (dB)");
title("Audio File 1");

subplot(3, 2, 2);
plot(audioFile_2_time, dB_2);
xlabel("Time (seconds)");
ylabel("Amplitude (dB)");
title("Audio File 2");

subplot(3, 2, 3);
plot(f_1, Mag_1(1:L_1 + 1));
xlabel("Frequency");
ylabel("Amplitude (dB)");

subplot(3, 2, 4);
plot(f_2, Mag_2(1:L_2 + 1));
xlabel("Frequency");
ylabel("Amplitude (dB)");

subplot(3, 2, 5);
spectrogram(audioFile_1(:, 1), 128, 120, 128, audioFile_1_fs);

subplot(3, 2, 6);
spectrogram(audioFile_2(:, 1), 128, 120, 128, audioFile_2_fs);

end