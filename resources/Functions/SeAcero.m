function [S] = SeAcero(Sut,d)
    Sf = 0.5*Sut;
    A = 4.51;
    b = -0.265;
    aux = A*(Sut)^b;
    %   carga superficie tamaño temperatura confiabilidad
    C = [1 aux 1.189*d^(-0.097) 1 0.659]
    S = C(1)*C(2)*C(3)*C(4)*C(5)*Sf;
    