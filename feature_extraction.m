a=importdata('enter the input file');
disp(a)
figure(1)
plot(a)
xlabel('Sample number')
ylabel('EMG signal')

% Feature Extraction 
 %MAV
 b=abs(fil);
 mav11=mean(b);
 disp(mav11);

%STD
std11=std(fil);
disp(std11)


%VAR
var11=var(fil);
disp(var11)

%RMS
rms11=sqrt(mean(fil.^2));
disp(rms11)

%waveform length
[E F]=size(fil);
len = 0;
for i =1:F
 for j = 1: E-1
        len  = len + abs(fil(j+1,i) - fil(j,i));
    end
    wl11(1,i) = len;
end
disp(wl11)

%ZC
sum6 = 0;
 thresh=0;
for i =1:F
    for j = 1: E-1
        if((((fil(j,i) > 0) && (fil(j+1,i) < 0))...
                || ((fil(j,i) < 0) && (fil(j+1,i) > 0)))...
                && abs(fil(j,i) - fil(j+1,i)) >= thresh)
        sum6 = sum6 + 1;
        end
    end
    zc11(1,i) = sum6;
end
disp(zc11)

%IEMG
iemg11=sum(b);
disp(iemg11)
