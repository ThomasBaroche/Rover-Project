%
% Script définissant les différents paramètres liés au Robot en simulation
%


%% Paramètres de simulation

%Pour le PWM
    FreqPWM = 1000;    %Fréquence de découpage du hacheur
    Ubus = 8.4;        %Tension du bus d'essai (Tension découpée)

%Pour les encodeurs
    EncRes = 636;      %Résolution des encodeurs
    TsEnc = 1/FreqPWM; %Pas de temps du model

%Pour les roues
    Rroue = 65.024e-3/2;    %Rayon de la roue en m (avant correction sur chaque roue)
    RroueL = Rroue;         %Rayon de la roue gauche en m
    RroueR = Rroue;         %Rayon de la roue droite en m
    Entraxe_Roues = 0.165;  %Entraxe entre les roues en m
    YG_Roues = 0.07767;     %Distance selon l'axe d'avancement entre les roues et le centre de masse en m
    XG_Roues = 0.00078;    
    
%Pour les réducteurs
    r = 1/53;     %Rapport de réduction (avant correction sur chaque roue)


%% Paramètres d'identification des moteurs

    %Fonction de transfert au premier ordre
    KL = 26.78;         %Gain de la fonction de transfert 1er ordre du moteur gauche
    TL = 0.0775;        %Temps caractéristique de la fonction de transfert 1er ordre du moteur gauche
    TdL = 0.00;         %Retard de la fonction de transfert du 1er ordre moteur gauche
    KR = KL;            %Gain de la fonction de transfert 1er ordre du moteur droit
    TR = TL;            %Temps caractéristique de la fonction de transfert 1er ordre du moteur droit
    TdR = 0.00;         %Retard de la fonction de transfert 1er ordre du moteur droit
    
    %Fonction de transfert au second ordre à poles complexes conjugués
    KL2 = 26.78;        %Gain de la fonction de transfert 2eme ordre du moteur gauche
    TwL = 0.0360;       %Temps de pulsation de la fonction de transfert 2eme ordre du moteur gauche (correspond à 1/Wc)
    ZetaL = 1.08;       %Coefficient d'amortissement de la fonction de transfert 2eme ordre du moteur gauche
    TdL2 = 0.00;        %Retard de la fonction de transfert du 2eme ordre moteur gauche
    
    KR2 = KL2;            %Gain de la fonction de transfert 2eme ordre du moteur droit
    TwR = TwL;            %Tempsde pulsation de la fonction de transfert 2eme ordre du moteur droit (correspond à 1/Wc)
    ZetaR = ZetaL;        %Coefficient d'amortissement de la fonction de transfert 2eme ordre du moteur droit
    TdR2 = 0.00;          %Retard de la fonction de transfert 2eme ordre du moteur droit

    %Simscape et Simulink
         %Résistance électrique interne du moteur (phénomènes statiques) en Ohm
%             Rm = 1.44;    %sans seuil au démarrage 
            Rm = 0.837;    %avec seuil au démarrage alpha=50%

            %Coefficient de frottement fluide rotorique du moteur (phénomènes statiques) en N.m/(rd/s)
            bm = 1.703e-06; 

            %Constante de couplage commune (phénomènes statiques) en V/(rd/s) et N.m/A
%             Kphi = 0.00148;    %sans seuil au démarrage
            Kphi = 0.00153;    %avec seuil au démarrage alpha=50%

            %Inductance propre du moteur (impact les phénomènes transitoires)
            Lm = 5.9e-05;         

            %Inertie de l'arbre moteur (impact les phénomènes transitoires)
%             Jm = 2.53e-07;    %sans seuil au démarrage          
            Jm = 3.43e-07;    %avec seuil au démarrage alpha=50%



%% Paramètres de commande

% %Pour les correcteurs PID
%     P = 1;              %Coefficient proportionnel (avant correction sur chaque roue)
%     I = 0;              %Coefficient intégral (avant correction sur chaque roue)
%     D = 0;              %Coefficient dérivé (avant correction sur chaque roue)
%     N = 100;            %Coefficient de filtrage
%     
%     PL = P;             %Coefficient proportionnel pour la roue gauche
%     PR = P;             %Coefficient proportionnel pour la roue droite
%     IL = I;             %Coefficient intégral pour la roue gauche
%     IR = I;             %Coefficient intégral pour la roue droite
%     DL = D;             %Coefficient dérivé pour la roue gauche
%     DR = D;             %Coefficient dérivé pour la roue droite
%     NL = N;             %Coefficient de filtrage pour la roue gauche
%     NR = N;             %Coefficient de filtrage pour la roue droite

