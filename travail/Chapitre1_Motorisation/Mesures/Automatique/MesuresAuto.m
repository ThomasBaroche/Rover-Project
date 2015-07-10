
%clear LeftOutput LeftInput alpha indice;

Ts_Auto = 0.005;

for indice=1:10
    
    %Choix du rapport cyclique
    alpha = 10*indice;
    
    %Lancement du modèle Simulink faisant les mesures
    set_param('MesuresAuto_Gauche', 'SimulationCommand', 'start');
    
    %Attente de la fin de la mesure
    pause(13);
    
    
    %Enregistrement des mesures
    MultiLeftOutput(indice) = LeftOutput;
    MultiLeftInput(indice) = LeftInput;
    
end



MesuresAuto_Resultats


clear indice Ts_Auto alpha LeftInput LeftOutput;



