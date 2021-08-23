F = A;
L = 150e-3;
r = 13e-3; %Eje >= 1/2 in


Mmax = F*L/4;

Sigma_max = 4*Mmax/(pi*r^3);
Tau_max = 2*F/(pi*r^2);

Sigma3 = Sigma_max/2 + sqrt((Sigma_max/2).^2+Tau_max.^2);
Sigma1 = Sigma_max/2 - sqrt((Sigma_max/2).^2+Tau_max.^2);

Sigma_eq =  sqrt(Sigma1.^2-Sigma1.*Sigma3+Sigma3.^2);

%Acero 1045 para vida infinita
S = SeAcero(565,2*r)*1000000;
FS =S/(max(max(Sigma_eq))*1000) %FS > 1.07
