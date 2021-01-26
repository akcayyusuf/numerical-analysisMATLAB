 clear all;
x(1)=0; 
y(1)=1;   
y2(1)=1;y3(1)=1;y4(1)=1;
dx=0.25;
imax=1/dx;
yA(1)=-x(1)-1+2*exp(x(1)); 
a=[0 1 2 3 4];
for i=1:imax
    y(i+1)=y(i)+(x(i)+y(i))*dx; 
    y2(i+1)=y2(i)+(x(i)+y2(i))*dx+(1+x(i)+y2(i))*dx^2/2; 
    y3(i+1)=y3(i)+(x(i)+y3(i))*dx+(1+x(i)+y3(i))*dx^2/2+(1+x(i)+y3(i))*dx^3/6;
    y4(i+1)=y4(i)+(x(i)+y4(i))*dx+(1+x(i)+y4(i))*dx^2/2+(1+x(i)+y4(i))*dx^3/6+(1+x(i)+y4(i))*dx^4/24;
    yA(i)=-x(i)-1+2*exp(x(i));         
    x(i+1)=x(i)+dx;
end
yh=Heun('x+y',0,1,1,0.25)

yh3=rk3('x+y',0,1,1,0.25)

yh4=rk4('x+y',0,1,1,0.25)

yA(i+1)=-x(i+1)-1+2*exp(x(i+1));
disp('       x      euler     2taylor   heun      3taylor  3rungek    4rungek   4taylor  exact solution')
out=[x'  y'  y2'  yh'  y3' yh3' yh4' y4'   yA']
hold;
plot(a,x);
plot(a,y);
plot(a,y2);
plot(a,yh);
plot(a,y3);
plot(a,yh3);
plot(a,y4);
plot(a,yh4);
plot(a,yA);