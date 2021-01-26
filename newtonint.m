 function [res] = newtonint(x,y,xs)
k=1;
n = length(x);
 
 for i = 1:n
    Delta(i,1) = y(i);
 end
 for i= 2:n
    for j = 2:i
       Delta(i,j)=(Delta(i,j-1)-Delta(i-1,j-1))/(x(i)-x(i-j+1));
       if i==j
           b(k)=Delta(i,j);
          fprintf('b(%d): %.6f \n', k,b(k));
           k=k+1;
       end
    end
 end

 fxs = Delta(n,n);
 for i = n-1:-1:1
    fxs = fxs*(xs-x(i)) + Delta(i,i);
 end
 res = fxs;
 res
 end