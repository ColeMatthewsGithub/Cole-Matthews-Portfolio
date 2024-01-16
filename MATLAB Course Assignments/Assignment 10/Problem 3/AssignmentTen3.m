%AssignmentTen3.m - A program to use Newton's method to find the roots of a
%function
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/14/2023

%Housekeeping
close all;
clear all;
clc;

%Collect input
initialpoint = input('What is the initial guess? > ');
tolerance = (1*(10^-5));

%Use the handles 
normalfunction = @(x)(((x-0.125)/(0.1+(x.^2)))+0.01);
derivative = @(x)(((0.1+(x^2))-((x-0.125)*(2*x)))/((0.1+(x^2))^2));

%Send it to the other function
value = NewtonSolve(initialpoint,tolerance,normalfunction,derivative);

%Fprintf
fprintf('The root is %g with a tolerance of %g using Newtons method. \n',value,tolerance);