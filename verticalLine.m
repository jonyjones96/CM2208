

x=[randn(2500, 1)/10; randn(2500,1)*10]; % noise with a step change in the middle
fs = 1000;
time=(0:length(x)-1)/fs;
figure(1)
plot(time, x)
xlabel('Time (s)')
grid on
end_time = length(x)/fs;

h=line([0,0],[-30,30],'color','r','marker', 'o', 'linewidth', 2);

sound(x, fs) % starts playing the sound
tic % Starts Matlab timer
t=toc; % Gets the time since the timer started
while t<end_time
   set(h, 'xdata', t*[1,1]) % Moves the line to the time indicated by t
   drawnow % necessary to get figure updated
   t=toc; % get the current time for the next update
end
