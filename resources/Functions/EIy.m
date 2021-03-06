function [eiy] = EIy(x,L,x0,U,P,W)
    M1 = U(:,1);
    M2 = U(:,2);
    R1 = U(:,3);
    P1 = P(:,1);
    P2 = P(:,2);
    eiy = 1/2*M1*(x.^2.*u(x))-1/2*M2*((x-L).^2.*u(x-L))+1/6*R1*x.^3+1/6*P1*((x-x0(1)).^3.*u(x-x0(1)))+1/6*P2*((x-x0(2)).^3.*u(x-x0(2)))+1/6*W*((x-x0(3)).^3.*u(x-x0(3)));