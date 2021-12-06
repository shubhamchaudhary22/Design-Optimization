function dg = constraintg(x)
dg = zeros(2,2);
dg(1,1) = -2;
dg(1,2) = 2*x(2);
dg(2,1) = 5;
dg(2,2) = 2*(x(2)-1);
end