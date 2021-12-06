function g = constraint(x)
g = zeros(2,1);
g(1) = x(2)^2 - 2*x(1);
g(2) = (x(2)-1)^2 + 5*x(1) - 15;
end