function [x] =sor(a,c,tol,w)
k=0;
err=999;
n=length(a);
for i=1:n
   for j=1:n
       e(i,j)=-a(i,j)/a(i,i);
       I(i,j)=0;
       if (i>j)
           L(i,j)=e(i,j);
       elseif i==j
           L(i,j)=0;
           U(i,j)=0;
           I(i,j)=1;
       else
           U(i,j)=e(i,j);
           I(i,j)=0;
       end
    end
end
for i=1:n
    e(i,i)=0; 
    d(i,1)=c(i,1)/a(i,i);
    x(i,1)=0;
end
oldx=x;
while err>tol
    x=w*L+U+d+(1-w)*oldx;
    
    x=inv(I-w*L)*w*(U*oldx+d)+(1-w)*oldx;
    
    err=norm(x-oldx);
    oldx=x;
    k=k+1;
end
k
