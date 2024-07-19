function[m_min] = minWAY(dist, matrix_inf)
n = 10;
min_number = 1;
    for i = 1 : n
        if dist(n,i) < dist(n,min_number)
            min_number = i;
        end
    end
    m_min = zeros(1, min_number);
    m_min(1) = n;
    j = 2;
    k = min_number;
    point = n;
    for i = n-1 : -1 : 1
        if dist(point,k) == dist(i,k-1) + matrix_inf(i,point)
            m_min(j) = i;
            j = j + 1;
            point = i;
            k = k - 1;
        end
    end
    
    m_min = fliplr(m_min);
end

