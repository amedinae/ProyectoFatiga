load('Fuerza en cilindros');
P = A;
P(:,1) = 2*P(:,1);
W = -1/2*9.81*658/1000*ones(201,1);
L = 1.6;
w = 1;
x0 = [(L-w)/2 (w+L)/2 L/2];
U = solver(L,x0,P,W);
x = 0:L/10000:L;
t = 0:2/200:2;
M = Mx(x,L,x0,U,P,W);
EIy0 = EIy(x,L,x0,U,P,W);
Vy = V(x,L,x0,U,P,W);
max(max(abs(EIy0)))
%mesh(x,t,EIy0);
%figure();
%mesh(x,t,M);
%figure();
%mesh(x,t,Vy);

r = 25e-3; %radio viga en metros
e = 10e-3; %espesor de viga en metros
I = momentoInercia(r,e);
sigma = normal(M,r,I);
a = area(r,e);
tau = cortante(Vy,a);
%figure();
%mesh(x,t,sigma);
%figure();
%mesh(x,t,tau);

[s1,s2,s3] = principales(sigma,tau);
%figure();
%mesh(x,t,s1);
%figure();
%mesh(x,t,s3);
sigmaEqui = vonMises(s1,s2,s3); 
%figure();
%mesh(x,t,sigmaEqui);

alter = alternante(max(sigmaEqui),min(sigmaEqui));
med = medio(max(sigmaEqui),min(sigmaEqui));
%figure()
plot(x,alter)
figure()
plot(x,med)




