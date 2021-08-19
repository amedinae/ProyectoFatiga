function [Vx] = V(x,L,x0,U,P,W)
    R1 = U(:,3);
    R2 = U(:,4);
    P1 = P(:,1);
    P2 = P(:,2);
    Vx = R1*u(x)+P1*u(x-x0(1))+P2*u(x-x0(2)) + W*u(x-x0(3)) + R2*u(x - L);
