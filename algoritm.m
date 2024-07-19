%реализация алгоритма его величества Форда-Беллмана
function[dist]=algoritm(matrix_inf)
n = 10;
dist=zeros(n);
dist(2:n,:) = inf; %со 2-ой строки по 10-ую записываем бесконечности

%алгоритм Форда-Бэллмана
    for i = 2 : n
    for j = 2 : n
            for k = 1 : n %количество ребер 
                if dist(j, i-1) > dist(k, i - 1) + matrix_inf(j, k) && dist(j,i) > dist(k,i-1)+matrix_inf(j,k)
                    dist(j, i) = dist(k, i - 1) + matrix_inf(j, k);
                end
                if dist(j,i)==inf
                dist(j,i)=dist(j,i-1);
                end
             end
    end
    end
end