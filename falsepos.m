function [root] = falsepos(down, upper ,fx, err)


% down: Starting point,
% upper: finishing point,
% fx: Our function
% err:Error 

for i= 1:100
x1 = (down*fx(upper)-upper*fx(down)) / (fx(upper)-fx(down));
fprintf("Iteration %d, X1=%.10f, Error=%.10f \n", i, double(x1),abs(x1-upper));

if abs(x1-upper) < err
break
end
down = upper;
upper = x1;
end
root = x1;
end