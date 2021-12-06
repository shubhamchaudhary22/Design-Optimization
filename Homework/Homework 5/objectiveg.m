function df = objectiveg(x)
df = zeros(1,2);
df(1) = 2*x(1);
df(2) = 2*(x(2)-3);
end