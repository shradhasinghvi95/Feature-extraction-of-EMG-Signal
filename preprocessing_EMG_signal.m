a=importdata('enter the input file');
disp(a)
figure(1)
plot(a)
xlabel('Sample number')
ylabel('EMG signal')

% Preprocessing data 
%Detrending data
y2=detrend(a);
%Rectified EMG signal
rec_y=abs(y2);
figure(2)
plot(y2)
xlabel('Sample number')
ylabel('Rectified EMG signal')
%Butterworth low pass filter
[b,a]=butter(order of filter,(fc/(fs/2)),'low');
fil=filter(b,a,rec_y);
figure(3)
plot(fil)
xlabel('Sample number')
ylabel('Low Pass Filtered EMG signal')