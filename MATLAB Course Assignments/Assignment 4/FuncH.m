%FuncH.m - A function to calculate h(x,y,z).
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/10/2023

%Set up the function
function h = FuncH(x,y,z)
%Calculate h(x,y,z)

h = z - FuncF(y) + FuncG(y,x);