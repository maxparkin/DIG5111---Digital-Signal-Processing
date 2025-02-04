%audio filename must in same directory of this m file
Filename = 'piano_middle_C.wav';

% First read wav file into memory
[Sig, Fs]=audioread(Filename);
%Sig stores raw audio data in column;
%Fs sampling frequency

Duration = length(Sig)/Fs;
disp(Duration);
Ts = 1/Fs;
Time = 0:Ts:Duration - Ts;
plot(Time, Sig);
ylabel('Amplitude');
xlabel('Time Sec');

sound(Sig);