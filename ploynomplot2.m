%Problem #2

clear all;close all,clc;

lhs = @(x) (x-2).^9;
rhs = @(x) x.^9-18.*x.^8+144.*x.^7-672.*x.^6+2016.*x.^5-4032.*x.^4+5376.*x.^3-4608.*x.^2+2304.*x-512;

T = 1.920:0.001:2.080;
y1 = lhs(T);
y2 = rhs(T);

plot(T,y1, 'b', 'linewidth', 2)
hold on
plot(T,y2,'--r*')
xlabel('x')
ylabel('P(x)')
title('x vs. P(x) plot')
legend('(x-2)^9 (left hand side)','expanded (x-2)^9 (right hand side)')
