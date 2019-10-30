clc
hold on
A = 1;
B = 1./3;
f=@(V)[A*V(1)*(1-(V(2)/2)), B*V(2)*(-1+(V(1)/3))];
a = 1;
b = 20;
n = 200;
h = (b-a)/n;

x0 = 5;
y0 = 2;
z0 = [x0, y0];

zf = Runge_K_DP(f, a, b, z0, n);
t=a:h:b;

xf = zeros(1, n+1);
yf = zeros(1, n+1);
for i=1:length(t)
    zf = Runge_K_DP(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
end
plot(xf, yf)
%plot(t,xf)
%plot(t,yf)
legend({'a = 1, b = 1', 'a = 3, b = 1','a = 1/3, b = 1 ','a = 1, b = 3','a = 1, b = 1/3'})