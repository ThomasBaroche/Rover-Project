%
% Script d�finissant les diff�rents param�tres li�s au Robot en simulation
%


%% Param�tres de simulation

%Pour le PWM
    FreqPWM = 1000;    %Fr�quence de d�coupage du hacheur
    Ubus = 8.4;        %Tension du bus d'essai (Tension d�coup�e)

%Pour les encodeurs
    EncRes = 636;      %R�solution des encodeurs
    TsEnc = 1/FreqPWM; %Pas de temps du model

%Pour les roues
    Rroue = 65.024e-3/2;    %Rayon de la roue en m (avant correction sur chaque roue)
    RroueL = Rroue;         %Rayon de la roue gauche en m
    RroueR = Rroue;         %Rayon de la roue droite en m
    Entraxe_Roues = 0.165;  %Entraxe entre les roues en m
    YG_Roues = 0.07767;     %Distance selon l'axe d'avancement entre les roues et le centre de masse en m
    XG_Roues = 0.00078;    
    
%Pour les r�ducteurs
    r = 1/53;     %Rapport de r�duction (avant correction sur chaque roue)


%% Param�tres d'identification des moteurs

    %Fonction de transfert au premier ordre
    KL = 26.78;         %Gain de la fonction de transfert 1er ordre du moteur gauche
    TL = 0.0775;        %Temps caract�ristique de la fonction de transfert 1er ordre du moteur gauche
    TdL = 0.00;         %Retard de la fonction de transfert du 1er ordre moteur gauche
    KR = KL;            %Gain de la fonction de transfert 1er ordre du moteur droit
    TR = TL;            %Temps caract�ristique de la fonction de transfert 1er ordre du moteur droit
    TdR = 0.00;         %Retard de la fonction de transfert 1er ordre du moteur droit
    
    %Fonction de transfert au second ordre � poles complexes conjugu�s
    KL2 = 26.78;        %Gain de la fonction de transfert 2eme ordre du moteur gauche
    TwL = 0.0360;       %Temps de pulsation de la fonction de transfert 2eme ordre du moteur gauche (correspond � 1/Wc)
    ZetaL = 1.08;       %Coefficient d'amortissement de la fonction de transfert 2eme ordre du moteur gauche
    TdL2 = 0.00;        %Retard de la fonction de transfert du 2eme ordre moteur gauche
    
    KR2 = KL2;            %Gain de la fonction de transfert 2eme ordre du moteur droit
    TwR = TwL;            %Tempsde pulsation de la fonction de transfert 2eme ordre du moteur droit (correspond � 1/Wc)
    ZetaR = ZetaL;        %Coefficient d'amortissement de la fonction de transfert 2eme ordre du moteur droit
    TdR2 = 0.00;          %Retard de la fonction de transfert 2eme ordre du moteur droit

    %Simscape et Simulink
         %R�sistance �lectrique interne du moteur (ph�nom�nes statiques) en Ohm
%             Rm = 1.44;    %sans seuil au d�marrage 
            Rm = 0.837;    %avec seuil au d�marrage alpha=50%

            %Coefficient de frottement fluide rotorique du moteur (ph�nom�nes statiques) en N.m/(rd/s)
            bm = 1.703e-06; 

            %Constante de couplage commune (ph�nom�nes statiques) en V/(rd/s) et N.m/A
%             Kphi = 0.00148;    %sans seuil au d�marrage
            Kphi = 0.00153;    %avec seuil au d�marrage alpha=50%

            %Inductance propre du moteur (impact les ph�nom�nes transitoires)
            Lm = 5.9e-05;         

            %Inertie de l'arbre moteur (impact les ph�nom�nes transitoires)
%             Jm = 2.53e-07;    %sans seuil au d�marrage          
            Jm = 3.43e-07;    %avec seuil au d�marrage alpha=50%



%% Param�tres de commande

% %Pour les correcteurs PID
%     P = 1;              %Coefficient proportionnel (avant correction sur chaque roue)
%     I = 0;              %Coefficient int�gral (avant correction sur chaque roue)
%     D = 0;              %Coefficient d�riv� (avant correction sur chaque roue)
%     N = 100;            %Coefficient de filtrage
%     
%     PL = P;             %Coefficient proportionnel pour la roue gauche
%     PR = P;             %Coefficient proportionnel pour la roue droite
%     IL = I;             %Coefficient int�gral pour la roue gauche
%     IR = I;             %Coefficient int�gral pour la roue droite
%     DL = D;             %Coefficient d�riv� pour la roue gauche
%     DR = D;             %Coefficient d�riv� pour la roue droite
%     NL = N;             %Coefficient de filtrage pour la roue gauche
%     NR = N;             %Coefficient de filtrage pour la roue droite

