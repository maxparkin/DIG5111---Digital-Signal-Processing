function filterSignal(audioFile, filterType, cutoffFrequency, filterOrder)

% Read in specified audio file. Read in both the file data and sample rate
% of the file.
[audioFile, fs] = audioread(audioFile);

% Passband ripple value in dB.
Ap = 3;

% Stopband attenuation value in dB.
Ast = 60;

% Make the filter order variable 'N', equal the 'filterOrder' argument.
N = filterOrder;

% Make the cutoff frequency variable 'Fp' equal to the
% 'cutoffFrequency' argument, divided by the file sample rate, divided
% by 2, to calculate the normalised frequency.
Fp = cutoffFrequency / (fs / 2);

% Run below code if input argument 'filterType' is equal to 'lowpass'.
if filterType == "lowpass"

    % Use the 'fdesign.lowpass' function to calculate the filter
    % specifications with the given parameters.
    filterSpecification = fdesign.lowpass('N,Fp,Ap,Ast',N,Fp,Ap,Ast);

elseif filterType == "highpass"

    % Use the 'fdesign.lowpass' function to calculate the filter
    % specifications with the given parameters.
    filterSpecification = fdesign.highpass('N,Fp,Ast,Ap',N,Fp,Ast,Ap);
        
end

% Design the filter using the 'design' function using the filter
% specifications calculated with the 'fdesign.lowpass' function.
customFilter = design(filterSpecification);

% As an FIR filter is being designed, the 'a' coefficcient will be equal to
% 1.
a = 1;

% Apply the filter to the audio file, using the numerator of the created
% filter ('b' coefficcient) and the 'a' coefficcient of 1.
filteredAudioFile = filter(customFilter.numerator, a, audioFile);

% Write the filtered signal to a new audio file.
audiowrite("filtered_audio_file.wav", filteredAudioFile, fs);

end
