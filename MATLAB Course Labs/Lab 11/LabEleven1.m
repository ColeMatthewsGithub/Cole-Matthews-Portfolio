%LabEleven1.m - A program to plot stuff for the lab.
%
%4/20/2023
%Cole Matthews
%AE 227 - Engineering Digital Computation

%Housekeeping
clear all;
close all;
clc;


%Make the points
xpoint = [0.46 0.34 0.70 0.94 1.02 1.10 1.48 1.53 1.62 1.92 2.09 2.12];
ypoint = [34.5 34.5 34.5 69.0 69.0 69.0 103.5 103.5 103.5 138.0 138.0 138.0];

%Make the Line
xline = 0:0.001:2.5;
yline = (65.1012*xline)+3.13744;

%Plot the stuff
hold on
plot1 = plot(xpoint,ypoint,"o");
plot2 = plot(xline,yline);
hold off
