load('Fuerza en cilindros');
P = A;
P(:,1) = -3*P(:,1);
L = 1;
x0 = [0.2 0.8];
U = solver(L,x0,P);
x = 0:1/10000:1;
t = 0:2/200:2;
M = Mx(x,L,x0,U,P);
EIy0 = EIy(x,L,x0,U,P);
max(max(abs(EIy0)))
[T] = meshgrid(0:2/200:2);
[X] = meshgrid(0:1/200:1);
Z = X.*exp(-X.^2 - T.^2);
mesh(x,t,EIy0)

