function n = note(f)
primitiveNoteFrequencies = [16.35, 17.32, 18.35, 19.45, 20.60, 21.83, 23.12, 24.50, 25.96, 27.50, 29.14, 30.87];
NoteFrequencies = zeros(6,12);
NoteFrequencies(1,:) = primitiveNoteFrequencies;
for i = 1:5
    NoteFrequencies(i+1,:) = 2*NoteFrequencies(i,:);
end
Frequencies = [];
for i = 1:6
    for j = 1:12
        Frequencies = [Frequencies NoteFrequencies(i,j)];
    end
end
freqDiffMag = abs(Frequencies(1)-f);
freqDiffPos = 1;
for i = 2:72
    if abs(Frequencies(i)-f) < freqDiffMag
        freqDiffMag = abs(Frequencies(i)-f);
        freqDiffPos = i;
    end
end
if mod((freqDiffPos-1),12)==0
    n = "C ";
elseif mod((freqDiffPos-2),12)==0
    n = "C#";
elseif mod((freqDiffPos-3),12)==0
    n = "D ";
elseif mod((freqDiffPos-4),12)==0
    n = "D#";
elseif mod((freqDiffPos-5),12)==0
    n = "E ";
elseif mod((freqDiffPos-6),12)==0
    n = "F ";
elseif mod((freqDiffPos-7),12)==0
    n = "F#";
elseif mod((freqDiffPos-8),12)==0
    n = "G ";
elseif mod((freqDiffPos-9),12)==0
    n = "G#";
elseif mod((freqDiffPos-10),12)==0
    n = "A ";
elseif mod((freqDiffPos-11),12)==0
    n = "A#";
else
    n = 'B ';
end
if freqDiffPos <= 12
    n = n + "0";
elseif freqDiffPos <=24
    n = n + "1";
elseif freqDiffPos <=36
    n = n + "2";
elseif freqDiffPos <=48
    n = n + "3";
elseif freqDiffPos <=60
    n = n + "4";
else
    n = n + "5";
end
end