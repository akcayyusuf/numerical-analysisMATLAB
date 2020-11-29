function[root] = new_rap (first,fx, err)

% first: Initial Value (Ýlk Deðer)
% fx:Our Func
% err: Error

s_fx = sym(fx); %We Cant derive with that formart we have to make symbolic expression
d_fx=diff(s_fx); %Derivation 
for i= 1:100
val = vpa(subs(s_fx, first)); % function value at first ,vpa for transform to decimal 

slope = vpa(subs(d_fx, first)); % slope value at first

x1 = first - val/slope; % Iteration

fprintf("Iteration %d, X1= %.10f, Error=%.10f \n", i, double(x1),abs(double(subs(first-x1))));

if abs(double(subs(first-x1))) < err % Error
root = double(x1);
break
end

first = x1;

end

end