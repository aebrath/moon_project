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
