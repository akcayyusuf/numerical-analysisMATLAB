function [root] = bairstow(a,r,s,tol)

r1=1;
r2=1;

i=1;

n=length(a)-1;
b=sdivision(a,r,s);

while(abs(r1)>tol || abs(r2)>tol)
    c=sdivision(b,r,s);
      
    
    
    dr =((b(1) * c(4)) -( b(2) * c(3))) / ((c(3) * c(3)) - (c(2) * c(4))); %det([c(2) c(3) ; c(3) c(4)]) / det([-b(1) c(3) ; -b(2) c(4)]);    
    ds =(b(2) * c(2) - c(3) * b(1)) / (c(3) * c(3) - c(2) * c(4)); %det([c(2) c(3) ;% c(3) c(4)]) / det([c(2) -b(1) ; c(3) -b(2)]);  
    r=r+dr;
    s=s+ds;
    
    r1= dr/r;
    r2= ds/s;
    
    
   fprintf("Iteration %d, r =%.10f, dr =%.10f, s =%.10f, ds =%.10f, Err R1=%.10f, Err R2=%.10f \n", i, r,dr,s,ds, abs(r1),abs(r2));
i=i+1;
    b=sdivision(a,r,s);
  
end



r1=r+sqrt(r^2-4*s)/2;
r2=r+sqrt(r^2-4*s)/2;



end


