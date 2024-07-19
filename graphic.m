function[]=graphic(m_station,matrix_nul,m_min)%функция постоения графика
hold on
grid on
%строим все пути
    for i=1:1:10
        for j=i+1:1:10
            if matrix_nul(i,j)==1
                point(1,1)=m_station(i,1);
                point(1,2)=m_station(j,1);
                point(2,1)=m_station(i,2);
                point(2,2)=m_station(j,2);
                plot(point(1,:), point(2,:), 'b--') %все возможные ребра обозначаем синим пунктиром
                plot(point(1,:), point(2,:), 'b*')% точки обозначаем синими звездочками
            end
        end
        text(m_station(i,1),m_station(i,2), num2str(i));
    end
    for i=1:1:length(m_min)-1
        point(1,1)=m_station(m_min(i),1);
        point(1,2)=m_station(m_min(i+1),1);
        point(2,1)=m_station(m_min(i),2);
        point(2,2)=m_station(m_min(i+1),2);
         hPlot = plot(point(1,:), point(2,:), 'g');%обозначаем кратчайший путь
           set( hPlot, 'LineWidth', 3 );
    end

title('Траектория кратчайших перемещений')
xlabel('Ox     Масштаб 1:20 км');
ylabel('Oy');
xlim([-10 10])
ylim([-10 10])
end