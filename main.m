%очиска памяти и командной строки
clear;
clc;
file=fopen('Results.txt','w');%функция записи значений в файл
A = (matrix_station());
disp('Точки:');
disp(A)
B = form_mDL(A);
disp('Матрица длин:');
disp(B)
C = form_mSM(B);
disp('Матрица смежности:');
disp(C)
D = algoritm(B);
disp('Матрица кратчайших путей:');
disp(D)
E = minWAY(D, B);
disp('Точки кратчайшего пути:');
disp(E)
F = NMEA_message(A ,B ,E);
graphic(A, C, E);

dlmwrite('Results.txt', A,'delimiter', '\t')
dlmwrite('Results.txt', B, '-append','roffset',1,'delimiter', '\t')
dlmwrite('Results.txt', C, '-append','roffset',1,'delimiter', '\t')
dlmwrite('Results.txt', D, '-append','roffset',1,'delimiter', '\t')
dlmwrite('Results.txt', E, '-append','roffset',1,'delimiter', '\t')

fclose(file);

