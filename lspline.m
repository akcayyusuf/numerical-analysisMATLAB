f1=@(x) 5.5-x;

fplot(f1,[3,4.5],'LineWidth',2)
hold on

f2=@(x) 0.6*x-1.7;
fplot(f2,[4.5,7],'LineWidth',2)

f3=@(x) 9.5-x;

fplot(f3,[7,9],'LineWidth',2)
plot(4.5,1,'o')
plot(7,2.5,'o')
grid on
hold off




