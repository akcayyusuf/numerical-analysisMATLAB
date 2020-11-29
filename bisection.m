
function [root] = bisection(down,upper,fx, err)
% down=lower point, u=upper point
% fx: Our function
% err:Error 

if fx(down)*fx(upper) > 0
fprintf("Wrong Points \n");

else

for i= 1:100

newroot = (down+upper)/2;
fprintf("Iteration %d, Root? =%.10f, Error=%.10f\n", i, double(newroot), abs(upper-newroot));

if fx(down)*fx(newroot) < 0

upper = newroot;
elseif fx(down)*fx(newroot) > 0
if abs(upper-newroot) < err

break
end
down = newroot;
end

end

end

root = newroot;

end


%bisection(28,33,@(x)x^2-29*x-29,0.00001)
