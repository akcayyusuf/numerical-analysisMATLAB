function [b] =sdivision(a,r,s)

n=length(a)-1;  
b(n+1)=a(n+1);
b(n)=a(n)+(r*b(n+1));

for i=(n-1):-1:1
    b(i)= a(i)+(b(i+1)*r)+(s*b(i+2));
    
end
%b
end