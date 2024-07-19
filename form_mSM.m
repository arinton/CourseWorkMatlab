%формирование матрицы смежности
function[matrix_nul]=form_mSM(matrix_inf)
matrix_nul = zeros(10);
    for i=1:10
     for j=1:10
        if matrix_inf(i,j)<= 18*5
            matrix_nul(i,j)=1;
        elseif matrix_inf(i,j)>= 18*5
            matrix_nul(i,j)=0;
        end
        if i==j
           matrix_nul(i,j)=0;
        end
     end
    end
end