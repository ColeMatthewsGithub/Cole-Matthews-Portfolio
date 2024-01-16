%LabSeven.m - A program to determine the values of several expressions.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%3/7/2023

%Housekeeping
clear all;
clc;

%Make the vectors
x = 2.2:-.6:-1;
y = linspace(1,3,7);
z = [-3.1 2 -6 5.3 -0.3];

%Figure our e
xx = 2.2:-.6:-.7;

%Do the stuff and display
fprintf('a. x(2) = %g \n',(x(2)));
fprintf('b. y(5) = %g \n',(y(5)));
fprintf('c. z(2)+x(6) = %g \n',(z(2)+x(6)));
fprintf('d. y-3 = %g %g %g %g %g %g %g \n',(y-3));
fprintf('e. 2*z+3*x = %g %g %g %g %g \n',(2*z+3*xx));
fprintf('f. x+y(2)-z(2) = %g %g %g %g %g %g \n',(x+y(2)-z(2)));
fprintf('g. size(x) = %gx%g \n',(size(x)));
fprintf('h. z(length(z)) = %g \n',(z(length(z))));
fprintf('i. x(z(2):end) = %g %g %g %g %g \n',(x(z(2):end)));
disp(' ');