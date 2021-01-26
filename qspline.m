f1=@(x) 5.5-x;

%fplot(f1,[3,4.5],'LineWidth',2)
%hold on

f2=@(x) 0.64*(x*x)-6.76*x+18.46;
%fplot(f2,[4.5,7],'LineWidth',2)

f3=@(x) -1.6*(x*x)+(24.6*x)-91.3;

%fplot(f3,[7,9],'LineWidth',2)
%plot(4.5,1,'o')
%plot(7,2.5,'o')

f7=@(x) (736/3945)*(x*x*x)-(2208/1315)*(x*x)+(4757/1315)*x+(4529/2630);
fplot(f7,[3,4.5],'LineWidth',2)

hold on

f8=@(x) -(1408/6575)*(x*x*x)+(24528/6575)*(x*x)-(136271/6575)*x+(502813/13150);
fplot(f8,[4.5,7],'LineWidth',2)

plot(4.5,1,'o','LineWidth',2)
plot(7,2.5,'o','LineWidth',2)

f9=@(x) (168/1315)*(x*x*x)-(4536/1315)*(x*x)+(38837/1315)*x-(207863/2630);
fplot(f9,[7,9],'LineWidth',2)


grid on
hold off

