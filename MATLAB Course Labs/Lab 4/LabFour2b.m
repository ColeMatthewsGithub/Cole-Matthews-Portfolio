%LabFour2b.m - A program to calculate the roots of a quadratic function.
%
%Cole Matthews
%2/9/2023
%AE 227 - Engineering Digital Computation

function LabFour2b(a,b,c)

%Send them to the other function
d = LabFour2a(a,b,c);

%Calculate the roots
x1 = (-b+sqrt(d))/2/a;
x2 = (-b-sqrt(d))/2/a;

%Display
stringx1 = string(x1);
stringx2 = string(x2);
fprintf('The roots of the function are %s and %s. \n',stringx1,stringx2);