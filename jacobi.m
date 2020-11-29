function [x] = jacobi(a,c,tol)

k=0;

err=999;

n=length(a);

for i=1:n
   for j=1:n
      e(i,j)=-a(i,j)/a(i,i);
   end
end
 
for i=1:n
    e(i,i)=0; 
    d(i,1)=c(i,1)/a(i,i);
    x(i,1)=0;
end
e
d
x
 
oldx=x;
while err>tol
    x=e*x+d;
    err=norm(x-oldx);
    oldx=x;
    k=k+1;
end
    k
end
