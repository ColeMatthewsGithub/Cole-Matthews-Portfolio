%FuncF.m - A function to calculate f(x).
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/10/2023

%Set up the function
function f = FuncF(x)
%Calculate f(x)
f = exp(-sqrt(abs(x)))+(x/((x^2)-1))*tan((3.48*x)-(0.27*pi));