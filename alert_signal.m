function alert_signal(pollutant)
if (pollutant>=0 && pollutant<10)
    fprintf('pollutant level very low\n')
elseif (pollutant>=10 && pollutant<1000)
    fprintf('water quality within safe limits\n')  
elseif (pollutant>=1000)
    fprintf('reaching dangerous level-%d, water treatment is required!\n',pollutant)      
else
    fprintf('value out of range\n')  
end
end

