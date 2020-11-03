%Problem #3

%a)

m = 15;
n = 14;
A = randn(m,n);
B = A(:,1) + rand(m,1);  %remove error for problem a) & b)
C = [A B];   %now 15x15

Cond = cond(C)
D = det(C)    
