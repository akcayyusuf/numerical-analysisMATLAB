function [I] = euler(fun,a,b,h)

f= inline(fun);

n =(b-a)/h;I=0;

for i=1:n
    a=a+h;
    I=I+f(a)*h;
    fprintf("N= %d, I =%.10f \n", i,I);
end 
I
end