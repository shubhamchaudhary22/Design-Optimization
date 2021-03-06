function a = report(solution,f,g)
fig = 1;
a = solution.x;
figure(fig)
fig = fig+1;       
cla
plot(a(1,:),a(2,:),'-o');
ti=title('x1 and x2 for each iteration');
set(ti,'Interpreter','latex');
set(ti,'FontSize',15);
x=xlabel('x1');
set(x,'Interpreter','latex');
set(x,'FontSize',15);
y=ylabel('x2');
set(y,'Interpreter','latex');
set(y,'FontSize',15);
hold off;
f1 = [];
g1 = [];
g2 = [];
for i = 1:5
f1(i) = f(solution.x(:,i));
gi = g(solution.x(:,i));
g1(i) = gi(1);
g2(i) = gi(2);
end
disp(g1);
disp(g2);
figure(fig)
fig = fig+1;       
cla
iter = [1 2 3 4 5];
plot(iter,f1,'-o',iter,g1,'-o',iter,g2,'-o');
ti=title('f, g1 and g2 for each iteration');
L=legend({'f(x)','g1(x)','g2(x)'});
set(L,'Interpreter','latex');
set(L,'FontSize',15);
set(L,'Location','northeast');
set(ti,'Interpreter','latex');
set(ti,'FontSize',15);
x=xlabel('Iterations');
set(x,'Interpreter','latex');
set(x,'FontSize',15);
y=ylabel('f(x)/g1(x)/g2(x)');
set(y,'Interpreter','latex');
set(y,'FontSize',15);
hold off;
end