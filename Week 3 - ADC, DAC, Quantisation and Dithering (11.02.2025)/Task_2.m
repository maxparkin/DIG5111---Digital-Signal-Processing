samplingFrequency = 22050;
samplingPeriod = 1 / samplingFrequency;
duration = 1;

%%
signal_rand = rand(1, samplingFrequency * duration);

signal_rand = signal_rand * 1 / max(abs(signal_rand));

audiowrite("random_noise_rand.wav", signal_rand, samplingFrequency);

%%
signal_randn = randn(1, samplingFrequency * duration);

signal_randn = signal_randn * 1 / max(abs(signal_randn));

audiowrite("random_noise_randn.wav", signal_randn, samplingFrequency);