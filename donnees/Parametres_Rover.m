%% Script définissant les différents paramètres liés au Robot
%
% 
% Ce fichier de paramètre est chargé dans le workspace au démarrage du projet
% 
% 
% Il est possible d'utiliser les paramètres fournit par MathWorks. Pour cela il suffit 
% d'écrire "Parametres_MathWorks" dans la console de Matalab. Cela aura pour effet de 
% remettre les paramètres utiles à leur valeur par défaut.
% 
%  
%% Paramètres de simulation

%Pour le PWM
    FreqPWM = 1000;    %Fréquence de découpage du hacheur
    Ubus = 8.7;        %Tension du bus d'essai (Tension découpée)

%Pour les encodeurs
    EncRes = 636;     %Résolution des encodeurs
    TsEnc = 1/FreqPWM;              %Pas de temps du model

%Pour les roues
    Rroue = 0.034;                 %Rayon de la roue en m (avant correction sur chaque roue)
    RroueL = Rroue;                %Rayon de la roue gauche en m
    RroueR = Rroue;                %Rayon de la roue droite en m
    Entraxe_Roues = 0.165;  %Entraxe entre les roues en m
    YG_Roues = 0.07767;            %Distance selon l'axe d'avancement entre les roues et le centre de masse en m
    XG_Roues = 0.00078;    
    
%Pour les réducteurs
    r = 1/53;           %Rapport de réduction (avant correction sur chaque roue)


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
    TwL = 0.0204;       %Temps de pulsation de la fonction de transfert 2eme ordre du moteur gauche (correspond à 1/Wc)
    ZetaL = 1.93;       %Coefficient d'amortissement de la fonction de transfert 2eme ordre du moteur gauche
    TdL2 = 0.00;        %Retard de la fonction de transfert du 2eme ordre moteur gauche
    
    KR2 = KL2;            %Gain de la fonction de transfert 2eme ordre du moteur droit
    TwR = TwL;            %Tempsde pulsation de la fonction de transfert 2eme ordre du moteur droit (correspond à 1/Wc)
    ZetaR = ZetaL;        %Coefficient d'amortissement de la fonction de transfert 2eme ordre du moteur droit
    TdR2 = 0.00;          %Retard de la fonction de transfert 2eme ordre du moteur droit

    
    %Simscape et Simulink
    bm = 1.703e-06;
    Jm = 3.36e-07;

    Lm = 5.9e-05;
    Rm = 0.902;
    
    Kphi = 0.00153;
    

%% Paramètres de commande

%Pour les correcteurs PID
    P = 1;              %Coefficient proportionnel (avant correction sur chaque roue)
    I = 0;              %Coefficient intégral (avant correction sur chaque roue)
    D = 0;              %Coefficient dérivé (avant correction sur chaque roue)
    N = 100;            %Coefficient de filtrage
    
    PL = P;             %Coefficient proportionnel pour la roue gauche
    PR = P;             %Coefficient proportionnel pour la roue droite
    IL = I;             %Coefficient intégral pour la roue gauche
    IR = I;             %Coefficient intégral pour la roue droite
    DL = D;             %Coefficient dérivé pour la roue gauche
    DR = D;             %Coefficient dérivé pour la roue droite
    NL = N;             %Coefficient de filtrage pour la roue gauche
    NR = N;             %Coefficient de filtrage pour la roue droite

