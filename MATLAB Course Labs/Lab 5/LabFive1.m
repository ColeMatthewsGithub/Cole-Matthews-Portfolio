%LabFive1.m - A program to print a multiplication table given a
%user-specified number of rows.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/13/2023

%Housekeeping
clear all;
clc;

%Input
disp('This is a program to create a multiplication table.');
a = input('How many rows would you like the table to be? \n> ');
fprintf('\nHere is the requested table: \n');

%Create for loops.
for j = 1:a
for i = 1:j
    b = i*j;
    fprintf('%d ',b);
end
fprintf('\n');
end