function[matrix_inf]=form_mDL(m_station)
matrix_inf(1:10,1:10)=inf;%задаём матрицу бесконечностей 10*10

    function [max]=way(x1,y1,x2,y2)
    max=20*sqrt((x2-x1)^2+(y2-y1)^2);
    end

for i=1:10
for j=1:10
    max=(way(m_station(i,1),m_station(i,2),m_station(j,1),m_station(j,2)));
if max<=18*5
if i~=j%если это элемент внедиагональный
matrix_inf(i,j)=max;
else
matrix_inf(i,j)=0;
end
end
end
end
end