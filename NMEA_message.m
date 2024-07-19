function[matrix_NMEA] = NMEA_message(m_station, matrix_inf, m_min)
m = 25;
XX = 0;
ZZ = 0;
size_nmea = size(m_min);
file_name = fopen('NMEA.txt', 'w');
    for i = 1:size_nmea(2)-1
        DD = matrix_inf(m_min(i), m_min(i+1));
        YY = XX * 60 - fix(XX) * 60;
        azimut =360 - atand((m_station(m_min(i+1),2) - m_station(m_min(i),2))/(m_station(m_min(i+1),1) - m_station(m_min(i),1)));
        if  azimut >= 360
             azimut =  azimut - 180;
        end

        if ZZ == azimut
            S1 = 'N';%сигнал отсутствия поворота
        else
            S1 = 'T';%сигнал наличия поворота
        end
        
        S2 = 'N';%сигнал "движение не окончено"
        ZZ = azimut;
        fprintf(file_name, '$UTHDG,%2d,%5.2f,%5.2f,%c,%6.2f,%c\n',fix(XX),YY,DD,S1,ZZ,S2);
        XX = XX + DD/18 + m/60;
        if XX >= 24
            XX = XX - 24;
        end
    end
   t = 22.06;
   XX = t + DD/18;
   YY = XX * 60 - fix(XX) * 60;
   DD = 0; 
   ZZ = 0;
   S1 = 'N';
   S2 = 'E';
   if XX >= 24
    XX = XX - 24;
   end
    fprintf(file_name, '$UTHDG,%2d,%5.2f,%5.2f,%c,%6.2f,%c\n',fix(XX),YY,DD,S1,ZZ,S2);
    fclose(file_name);
    matrix_NMEA = 0;
end
