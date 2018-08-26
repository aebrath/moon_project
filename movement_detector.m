%% Fix all
accX_new = isnan(accX); %Checking for NaN in x-direction
j = 1;
for i = 1:length(accX_new) %Removing all NaN, creating new vector of only real numbers
    if (accX_new(i) == 0)
        accX_clean(j) = accX(i);
        j = j + 1;
    end
end

accY_new = isnan(accY); %Checking for NaN in y-direction
j = 1;
for i = 1:length(accY_new) %Removing all NaN, creating new vector of only real numbers
    if (accY_new(i) == 0)
        accY_clean(j) = accY(i);
        j = j + 1;
    end
end

accZ_new = isnan(accZ); %Checking for NaN in z-direction
j = 1;
for i = 1:length(accZ_new) %Removing all NaN, creating new vector of only real numbers
    if (accZ_new(i) == 0)
        accZ_clean(j) = accZ(i);
        j = j + 1;
    end
end

acctot_clean = accX_clean + accY_clean + accZ_clean; %Adding x-, y- and z-direction
%% STD
Fs	= 50;	% sampling rate
WindowLength	=	Fs;	% window length
iterator	=	Fs;	% iteration in samples
Y_vec = [];
Output_vec = []; %Vector showing detected movement
% figure()
for i = 1:iterator:length(acctot_clean) - WindowLength
    pause(0.3)
	segment = acctot_clean(i:i+WindowLength); % windowed N/Fs seconds of data
    %plot(segment)
    diff = std(segment); %Calculating STD of accelerometer vector
    Y_vec(end+1) = diff;
    if (diff > threshold) 
        Output_vec(end+1) = 1;
    else 
        Output_vec(end+1) = 0;
    end
    
end