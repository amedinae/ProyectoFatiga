function [S] = Se(Sut,d)
    Sf = 0.4*Sut;
    A = 57.7;
    b = -0.718;
    %   carga superficie tamaño temperatura confiabilidad
    C = [1  A*(Sut)^b>=1:1:A*(Sut)^b  1.189*d^(-0.097) 1 0.753];
    S = C(1)*C(2)*C(3)*C(4)*C(5)*Sf;
    
    