[filename1,filepath1]=uigetfile({'*.*','All Files'});
%load([filepath1 filename1]);
%uiimport([filepath filename]);
% set(handles,'String',filename1);
[wave,fs]=audioread(filename1); % read file into memory */
global pl;
pl=audioplayer(wave,fs);
%sound(wave,fs); % hear what it sounds like */

t=0:1/fs:(length(wave)-1)/fs; % and get sampling frequency */

plot(t,wave);%/* graph it % try zooming while its up…not much visible until you do*/

%To plot in frequency domain add the followings:

n=length(wave)-1;

f=0:fs/n:fs;

wavefft=abs(fft(wave)); %/* perform Fourier Transform */

plot(f,wavefft);% /* plot Fourier Transform */
