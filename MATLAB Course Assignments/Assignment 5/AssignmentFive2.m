%AssignmentFive2.m - A program to calculate the ratio of the nth and the (n-1)th
%terms where n is a value entered by the user
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/17/2023

%Housekeeping
clear all;
clc;

%Request input
disp('This program will calculate the ratio of the nth and the (n-1)th terms of the Fibonacci series.');
n = input('Enter "n" >');

%Do the loop
a=0;
b=1;
for i = 1:n
    %%DEBUG CODE
    fprintf('%g ',a);
    %%DEBUG CODE
c=a+b;
a=b;
b=c;
end

%Display stuff
disp(' ');
fprintf('The ratio of n and n-1 is %0.8f. \n',(b/a));
disp(' ');
disp('The number of values in the Fibonacci series necessary to get the value of the Golden Ratio accurate to four decimal places is 14.');
disp('The number of values in the Fibonacci series necessary to get the value of the Golden Ratio accurate to eight decimal places is 23.');
