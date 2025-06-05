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

% Calculates FFT
audioFile_1_len = length(audioFile_1); % Calculates the length of 'audioFile_1'.
SSC_1 = fft(audioFile_1); % Simulating the FFT of 'audioFile_1'.
SSR_1 = abs(SSC_1) ./ audioFile_1_len; % Compares absolute values of FFT against actual values of 'audioFile_1'.
L_1 = round(audioFile_1_len / 2); % Divides the length of 'audioFile_1' by then rounds to the nearest integer.
Mag_1 = mag2db(SSR_1); % Converts magnitude of 'SSR_1' to decibels.
f_1 = (audioFile_1_fs / 2) * (0:L_1) / L_1; % Creates the 'x' axis to plot the maginude spectrum of the FFT.

audioFile_2_len = length(audioFile_2);
SSC_2 = fft(audioFile_2);
SSR_2 = abs(SSC_2) ./ audioFile_2_len;
L_2 = round(audioFile_2_len / 2);
Mag_2 = mag2db(SSR_2);
f_2 = (audioFile_2_fs / 2) * (0:L_2) / L_2;

figure("Name", "Frequency Comparison"); % Label the figure 'Frequency Comparison'.

% Plot the amplitude of the two signals.
subplot(3, 2, 1); % Arrange the plot to the appropraite size within the figure.
plot(audioFile_1_time, dB_1); % Plot 'audioFile_1_time' against 'dB_1'.
xlabel("Time (seconds)"); % Label the 'x' axis.
ylabel("Amplitude (dB)"); % Label the 'y' axis.
title("Audio File 1 - Amplitude"); % Create a title for the graph.

subplot(3, 2, 2);
plot(audioFile_2_time, dB_2);
xlabel("Time (seconds)");
ylabel("Amplitude (dB)");
title("Audio File 2 - Amplitude");

% Plot the FFT of the two signals.
subplot(3, 2, 3);
plot(f_1, Mag_1(1:L_1 + 1)); % Plots FFT frequency against magniude.
xlabel("Frequency");
ylabel("Amplitude (dB)");
title("Audio File 1 - FFT");

subplot(3, 2, 4);
plot(f_2, Mag_2(1:L_2 + 1));
xlabel("Frequency");
ylabel("Amplitude (dB)");
title("Audio File 2 - FFT");

% Plot a spectrogram of the two signals.
subplot(3, 2, 5);
spectrogram(audioFile_1(:, 1), 128, 120, 128, audioFile_1_fs); % Plot a spectrogram of one of the channels of 'audioFile_1'.
title("Audio File 1 - Spectrogram");

subplot(3, 2, 6);
spectrogram(audioFile_2(:, 1), 128, 120, 128, audioFile_2_fs);
title("Audio File 2 - Spectrogram");

end