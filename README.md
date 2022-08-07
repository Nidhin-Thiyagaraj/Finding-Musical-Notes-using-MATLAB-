# Finding-Musical-Notes-using-MATLAB-
This code creates a list of sequence of musical notes in a given audio file using Discrete Fourier Transform. 
The Windowing technique used in this code is based on : https://github.com/nikita9604/Piano-Note-Recognition

The steps followed in this code are as follows :

Step 1 :
The start and end points of a note are detected by windowing, which is done by noting the points where the magnitude of audio sample exceeds or decreases below threshold values defined in the code. The start and end points of each note interval is averaged and returned by a function in the form of a list.
Step 2 :
The audio data between 2 note points in the list is passed as an arguement to a function melody_note, along with the sampling frequency. This function basically finds the frequency with the largest magnitude by Fast Fourier Transform Method and passes the frequency as an arguement to another function called note. 
Step 3 :
The note function returns the musical note corresponding to the passed frequency.
