function [I] = simpson(fun,a,b,h)

f= inline(fun)

n= (b-a)/(2*h);I=0;

for i=1:n
    I=I+(f(a)+4*f(a+h)+f((2*h)+a))*h/3;
    fprintf("N= %d, I =%.10f \n", i,I);
    a=a+2*h;
    
end
I

end
%trapz('pi*tan(pi*y/4)*tan(pi*y/4)',0,1,0.01)