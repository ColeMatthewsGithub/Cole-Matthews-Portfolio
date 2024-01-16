%LabTwo1.m - program to calculate y and r given a, b, c, d, and f.
%Cole Matthews
%1/24/2023
%AE 227

%Housekeeping
clear all
clc

%Setup variables
a = 1.08;
b = -2.53;
c = 0.82;
d = 1.73;
f = 11.83;

%Find y
y = ((a*b)*(1/c)*((f^2)/2))

%Find r
r = (1/((1/a)+(1/b)+(1/c)+(1/d)))