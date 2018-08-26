delimiter = ',';
startRow = 1;


% Recorded data
format = '%{dd.MM.yyyy HH:mm:ss.SSS}D%f%f%f%f%f%f%f%f%[^\n\r]';
%fileName = uigetfile('*');
fileName = '7mars_bev_hodehorisontalt.csv';
fileID = fopen(fileName,'r');

data = textscan(fileID, format, 'Delimiter', delimiter, 'HeaderLines', startRow, 'ReturnOnError', false);
fclose(fileID);
timestamp = data{:, 1};
ambient = data{:, 2};
x625 = data{:, 3};
x940 = data{:,4};
x525 = data{:,5};
temp = data{:,6};
accX = data{:,7};
accY = data{:,8};
accZ = data{:,9};

