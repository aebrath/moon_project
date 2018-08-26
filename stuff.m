importcode;
%Green pulse in time
x = 1:length(x525);
t1 = x/Fs; %Time in seconds
figure()
plot(t1,x525)
title('Green PPG in time');

%Accelerometer data in time
x = 1:length(acc_tot);
t2 = x/Fs; %Time in seconds
figure()
plot(t2,acc_tot)
title('Accelerometer data in time'); 

%Calculating FFT of green
Nfft = 2^ceil(log2(length(x525))); 
x = -Nfft/2:1:Nfft/2-1; 
f = x/Nfft*Fs; %Hertz
figure()plot(f,abs(fft((x525-mean(x525)),Nfft))); %no DC component