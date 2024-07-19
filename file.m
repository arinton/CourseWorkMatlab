file_name = fopen('stations.txt', 'w');
station =[ 2 -5; 5 -4; 2 -2; -2 -2; -4 1; -3 2; -3 5; -7 3 ];
writematrix(station, 'stations.txt');
fclose(file_name);