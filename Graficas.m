clc
hold on
f=@(t,y) 1+2*y;
a=0;
b=2;
n=50;
y0=1;
[r,o] = Euler(f,a,b,y0,n);
[u,v] = Euler_M(f,a,b,y0,n);
[q,m] = Runge_Kutta(f,a,b,y0,n);
%plot(r,o)
%plot(u,v)
%plot(q,m,'p')

h=(b-a)/n
t=a:h:b;
w= (-1./2)+(7./2)*exp(2*t);
error=(abs(v-w))
error2=(abs(o-w))
error3=(abs(m-w))
%plot(t,error)
%plot(t,error2)
plot(t,error3,'p')
legend({'Euler','Euler mejorado','Runge-Kutta'})