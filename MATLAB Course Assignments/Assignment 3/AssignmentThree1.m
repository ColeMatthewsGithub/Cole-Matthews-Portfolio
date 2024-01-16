%AssignmentThree1.m - A program to calculate the capacity of a flight
%Cole Matthews
%AE 227 - Engineering Digital Computation

%Housekeeping
clear all;
clc;

%Record the input
a = input('Enter the flight number: ', 's');
b = input('Enter the airplane capacity: ');
c = input('Enter the number of passengers on this flight: ');

%Calculations
d = (100*(c/b));

%Output
fprintf('Flight %s is %2.0f%% full. \n', a,d)