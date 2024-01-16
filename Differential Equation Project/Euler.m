%Euler.m - A program to do Euler's method on an initial
%value problem using different step sizes.
%
%Cole Matthews
%6/14/2023
%MATH 230 - Differential Equations


%Housekeeping
clear all;
close all;
clc;

%Initialize stuff
h = input('Step size (h)?: ');
x = 1;
y = 5;

%Euler's Method
while x <= 1.5
dydx = ((2*x)-(3*y)+1);
y = y + (dydx*h);
x = x + h;
end
fprintf('Euler''s Method: Y(%g) = %g \n',x,y);


%Improved Euler's Method
%Use different variables and a for loop this time because it's better
y = 5;   
for x = 1+h:h:1.5
dydx1 = ((2*x)-(3*y)+1);
dydx2 = ((2*(x+h))-(3*(y+(h*dydx1)))+1);
y = y + (h*(dydx1 + dydx2)/2);
end 
fprintf('Improved Euler''s Method: Y(%g) = %g \n',x,y);