%AssignmentTen2.m - A program to  find the temperature where the equation is satisfied within
%an interval.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/12/2023

%Housekeeping
clear all;
close all;
clc

%Make t and get the stuff from the function
t=305:1:500;
y = fn10_2(t);

%Plot the stuff
plot1 = plot(t,y);
hold on
y2=0*t;
plot2 = plot(t,y2);
hold off

%Ask for relative error tolerance
interval1 = input('Left bound? > ');
disp(' ');
interval2 = input('Right bound? > ');
disp(' ');
relativeerrortolerance = input('Relative error tolerance? (Example: 0.01%) > ');
disp(' ');

%Ask for the number from the other function
answer = SecantSolve(interval1,interval2,relativeerrortolerance);
fprintf('The root is %0.9f. \n',answer);
