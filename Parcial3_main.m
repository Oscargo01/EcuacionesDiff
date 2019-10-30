clc 
hold on
a = 0.2;%Esta variable es una constante dada
b = 0.2;%Esta es otra constante dada
c = 2.3;%Esta es la constante que me fue asignada
v0 = [1,1,1];%Punto inicial
f=@(V)[-(V(2)+V(3)), V(1) + a*V(2), b + V(1)*V(3)- c*V(3)];%Este es el vector que recibe las funciones
a = 0;
b = 50;
n = 1000;
h = (b-a)/n;
[t,xf,yf,zf] = Parcial3(f,a,b,v0,n)
plot3(xf,yf,zf)
%plot(t,xf)
