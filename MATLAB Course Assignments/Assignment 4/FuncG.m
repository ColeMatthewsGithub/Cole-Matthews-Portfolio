%FuncG.m - A function to calculate g(x,y).
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/10/2023

%Set up the function
function g = FuncG(x,y)
%Calculate g(x,y)
g = (-(2.8)^((x^2)+(0.3*y)))-(((x^2)-(x*y)+2)/((y^3)-((x^2)*y)-2.4))*(x+(2*y));