%LabEleven2.m - A program to find a fit for the data in the lab.
%
%4/20/2023
%Cole Matthews
%AE 227 - Engineering Digital Computation

%Housekeeping
clear all;
close all;
clc;

%Create x
x=0:0.01:5;

%Plot the points
xpoint = [0.0 0.5 1.0 1.5 2.0 3.0 3.5 4.0];
ypoint = [2.0 1.7 2.5 5.3 8.0 11.0 9.9 5.9];
hold on
plotpoint = plot(xpoint,ypoint,"o");

%Degree 1
[P1,S1] = polyfit(xpoint,ypoint,1);
degree1 = polyval(P1,x);
plot1 = plot(x,degree1);

%Degree 2
[P2,S2] = polyfit(xpoint,ypoint,2);
degree2 = polyval(P2,x);
plot2 = plot(x,degree2);

%Degree 3
[P3,S3] = polyfit(xpoint,ypoint,3);
degree3 = polyval(P3,x);
plot3 = plot(x,degree3);

%Degree 4
[P4,S4] = polyfit(xpoint,ypoint,4);
degree4 = polyval(P4,x);
plot4 = plot(x,degree4);

%Degree 5
[P5,S5] = polyfit(xpoint,ypoint,5);
degree5 = polyval(P5,x);
plot5 = plot(x,degree5);