%AssignmentTen1.m - A program to Simulate the bisection method for a
%polynomial and find the roots.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/11/2023

%Housekeeping
clear all;
close all;
clc;

%Plot stuff
x = -1.5:0.0001:1.5;
y = fn10_1(x);
plot1 = plot(x,y);
hold on
y2=0*x;
plot2 = plot(x,y2);
hold off
xlabel('X Values');
ylabel('f(X) Values');


%Ask how many roots
roots = input('How many roots to solve for? >');
disp(' ');
disp('------------------------------------------------------------');
disp(' ');

for i=1:roots
%Assign intervals and tolerance
interval1 = input('Left bound of the starting interval? >');
disp(' ');
interval2 = input('Right bound of the starting interval? >');
disp(' ');
tolerance = input('Tolerance? (Example: 0.0001) >');
disp(' ');

%Send it to the function
c = BisectionSolve(interval1,interval2,tolerance);

%Print results to the command window
fprintf('The interval was %g to %g with a tolerance of %g.\n',interval1,interval2,tolerance);
fprintf('There is a root at %g \n',c);
disp(' ');
disp('------------------------------------------------------------');
disp(' ');
end