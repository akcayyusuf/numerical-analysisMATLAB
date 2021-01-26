function [I]= simp38(fun,a,b,h)

f= inline(fun)

n= (b-a)/(3*h);I=0;

for i=1:n
    I=I+(f(a)+3*f(a+h)+3*f(a+(2*h))+f((3*h)+a))*(3*h/8);
    fprintf("N= %d, I =%.10f \n", i,I);
    a=a+3*h;
    
end
I
end