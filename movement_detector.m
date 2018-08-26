%% Fix all
accX_new = isnan(accX);
j = 1;
for i = 1:length(accX_new)
    if (accX_new(i) == 0)
        accX_clean(j) = accX(i);
        j = j + 1;
    end
end

accY_new = isnan(accY);
j = 1;
for i = 1:length(accY_new)
    if (accY_new(i) == 0)
        accY_clean(j) = accY(i);
        j = j + 1;
    end
end

accZ_new = isnan(accZ);
j = 1;
for i = 1:length(accZ_new)
    if (accZ_new(i) == 0)
        accZ_clean(j) = accZ(i);
        j = j + 1;
    end
end

acctot_clean = accX_clean + accY_clean + accZ_clean;
