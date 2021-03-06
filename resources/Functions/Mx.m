function [Mx] = Mx(x,L,x0,U,P,W)
    M1 = U(:,1);
    M2 = U(:,2);
    R1 = U(:,3);
    P1 = P(:,1);
    P2 = P(:,2);
    Mx = M1*u(x)-M2*u(x-L)+R1*x+P1*((x-x0(1)).*u(x-x0(1)))+P2*((x-x0(2)).*u(x-x0(2))) + W*((x-x0(3)).*u(x-x0(3)));