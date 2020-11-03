%Prob 1

function [Q,R] = modgramschmit(A) 

[m,n] = size(A);     %m>n

V = A;
Q = zeros(m,n);
R = zeros(m,n);

for j = 1:n
    R(j,j) = norm(V(:,j));
    Q(:,j) = V(:,j)/R(j,j);
    
    for k = j+1:n
        R(j,k) = Q(:,j)' * V(:,k);
        V(:,k) = V(:,k) - R(j,k)*Q(:,j);
    end
end

%check orthogonality
isAlways(A==Q.*R);




