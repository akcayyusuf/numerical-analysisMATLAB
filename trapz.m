function [I] = trapz(fun,a,b,h)

f= inline(fun)

n= (b-a)/h;I=0;

for i=1:n
    I=I+(f(a)+f(a+h))*h/2;
    fprintf("N= %d, I =%.10f \n", i,I);
    a=a+h;
end
I
end

%trapz('pi*tan(pi*y/()4)*tan(pi*y/4)',0,1.2,0.01)