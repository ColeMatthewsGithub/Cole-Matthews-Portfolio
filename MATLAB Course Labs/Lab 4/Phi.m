%Phi.m - A program to determine Φ(x)
%
%Cole Matthews
%2/9/2023
%AE 227 - Engineering Digital Computation

function Phi = Phi(x)
%Calculate values to make computing the big equation for phi easier to write
a = 0.4361836;
b = 0.1201676;
c = 0.937298;
r = exp(-0.5*x^2)/sqrt(2*pi);
t = 1/(1+0.3326*x);

%Calculate Phi
Phi = 0.5-r*(a*t-b*t^2+c*t^3);