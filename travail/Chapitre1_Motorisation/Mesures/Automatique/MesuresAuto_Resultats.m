figure('Name','Superposition des mesures')
hold on;

for i=1:10
    %subplot(2,5,i);
    plot(MultiLeftOutput(i).time,MultiLeftOutput(i).signals.values);
end
    
legend('10%','20%','30%','40%','50%','60%','70%','80%','90%','100%');
hold off;

clear i;
