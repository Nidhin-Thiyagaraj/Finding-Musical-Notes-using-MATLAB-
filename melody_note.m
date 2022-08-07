function dominantNote = melody_note(audio, Fs)

AUDIO = abs(fft(audio));
AUDIO(1) = 0;
RootNoteMagnitude = 0;
RootNoteFrequency = 0;
for i = 1:(length(AUDIO)/2)
    if RootNoteMagnitude < AUDIO(i+1)
        RootNoteFrequency = (i+1)*Fs/length(AUDIO);
        RootNoteMagnitude = AUDIO(i+1);
    end
end

dominantNote = note(RootNoteFrequency);
end