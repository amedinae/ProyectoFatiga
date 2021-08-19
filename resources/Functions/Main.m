load('Fuerza en cilindros');
P = A;
P(:,1) = 2*P(:,1);
W = -1/2*9.81*658/1000*ones(201,1);
L = 1.6;
a = 1;
x0 = [(L-a)/2 (a+L)/2 L/2];
U = solver(L,x0,P,W);
x = 0:L/10000:L;
t = 0:2/200:2;
M = Mx(x,L,x0,U,P,W);
EIy0 = EIy(x,L,x0,U,P,W);
Vy = V(x,L,x0,U,P,W);
max(max(abs(EIy0)))
mesh(x,t,EIy0);
figure();
mesh(x,t,M);
figure();
mesh(x,t,Vy);