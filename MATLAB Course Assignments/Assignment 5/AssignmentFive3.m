%AssignmentFive2.m - A program to estimate sin(x) using a Maclaurin
%polynomial.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/17/2023

%Housekeeping
clear all;
clc;

%Input x
disp('This program uses a Maclaurin polynomial to estimate the value of sin(x).')
disp(' ');
x = input('Enter x (radians) > ');
t = input('Degree of accuracy (number of decimal places) > ');

%Degree of accuracy
d = (10^(-t));


%Loop
i=1;
j=3;
jj=5;
xx=x;
jjj=0;
while i>d
    xx = xx - ((x^j)/factorial(j));
    xx = xx + ((x^jj)/factorial(jj));
    j = j+4;
    jj = jj+4;
    i = xx-sin(x);
    jjj = jjj+1;
end

%Display result
fprintf('Sin(%g) is approximately %0.8f \n',x,xx);

%Display other stuff
disp('The true value of sin(16.2) is -0.47242199');
disp(' ');
fprintf('The minimum number of trials needed to reach a %g decimal place agreement with \n',t);
fprintf('the true value of sin(%g) is %g. \n',x,jjj);