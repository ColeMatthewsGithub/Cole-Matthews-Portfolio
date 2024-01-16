%Assignment2Problem5.m - A program to calculate the values of
%x, a, and y given a, b, and c.
%
%Cole Matthews
%1/26/2023
%AE 227 - Engineering Digital Computation

%Housekeeping, set up Euler's number
clear all
clc
e = 2.71828;

%Inform the user what the inputs to the program are.
disp('The inputs to a, b, and c have been assigned the values of 0.27, 1.53, and 124.3E-4, respectively.')

%Assign values
aa = 0.27;
b = 1.53;
c = 124.3E-4;

%Calculate x, a, and y
x = (-b+sqrt((b^2)-(4*aa*c)))/(2*aa)
a = (e^(b/(aa^c)))+acos(1/b)
y = ((c)^(1/3))+((aa+b)*(b-c))