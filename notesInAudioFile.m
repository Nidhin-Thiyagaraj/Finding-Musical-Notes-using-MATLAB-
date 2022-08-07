clc
clear all
close all

[audio, Fs] = audioread("open notes of guitar.mp3");
w = noteWindow(audio);
noOfNotes = length(w)-1;
notes = [];
for i=1:noOfNotes
    notes = [notes; melody_note(audio(w(i):w(i+1)), Fs)];
end

disp("Notes are : ");
disp(notes);

function w = noteWindow(aud)
sound = false;
len = length(aud);
upperThreshold = 0.2*max(aud);
lowerThreshold = 0.04*max(aud);
noteStartStopPoints = [];
for i=51:len-50
    if sound==false
        if(max(abs(aud(i-50:i+50)))>upperThreshold)
            noteStartStopPoints = [noteStartStopPoints i];
            sound = true;
        end
    else
        if(max(abs(aud(i-50:i+50)))<lowerThreshold)
            noteStartStopPoints = [noteStartStopPoints i];
            sound = false;
        end
    end
end
noteStartStopPoints = [0 noteStartStopPoints len];
for i=1:(length(noteStartStopPoints)/2)
    w(i) = (noteStartStopPoints(2*i-1)+noteStartStopPoints(2*i))/2;
end
end
