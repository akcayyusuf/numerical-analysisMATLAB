function [y] = rk3(f,x0,y0,xfinal,h)
f=inline(f);
imax=xfinal/h;
x(1)=x0;
y(1)=y0;

 for i=1:imax
 k1=f(x(i),y(i));
 k2=f(x(i)+1/2*h,y(i)+1/2*k1*h);
 k3=f(x(i)+h, y(i)-k1*h+2*k2*h);
 y(i+1)=y(i)+h*1/6*(k1+4*k2+k3);
 x(i+1)=x(i)+h;
 end
end