function [y] = rk4(f,x0,y0,xfinal,h)
f=inline(f)
imax=xfinal/h;
x(1)=x0;
y(1)=y0;
 for i=1:imax
 k1=f(x(i),y(i));
 k2=f(x(i)+1/2*h,y(i)+ 1/2*k1*h);
 k3=f( x(i)+(1/2*h), y(i)+(1/2*k2*h));
 k4=f(x(i)+h,y(i)+k3*h);
 y(i+1)=y(i)+h*1/6*(k1+2*k2+2*k3+k4);
 x(i+1)=x(i)+h;
 end
end