load('Fuerza en cilindros');
P = A;
P(:,1) = 2*P(:,1);
W = -9.81*658/1000*ones(201,1);
L = 1;
x0 = [0.2 0.8 0.5];
U = solver(L,x0,P,W);
x = 0:1/10000:1;
t = 0:2/200:2;
M = Mx(x,L,x0,U,P,W);
EIy0 = EIy(x,L,x0,U,P,W);
max(max(abs(EIy0)))
[T] = meshgrid(0:2/200:2);
[X] = meshgrid(0:1/200:1);
Z = X.*exp(-X.^2 - T.^2);
mesh(x,t,EIy0);
figure();
mesh(x,t,M);