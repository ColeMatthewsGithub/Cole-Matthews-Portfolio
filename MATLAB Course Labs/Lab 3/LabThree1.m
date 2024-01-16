%LabThree1.m - A program to read inventory information from a store and
%total the cost
%
%Cole Matthews
%1/30/2023
%AE 227 - Engineering Digital Computation

%Housekeeping
clear all;
clc;

%Opening the file
FID = fopen('parts_inv.txt', 'r');

%Using fscanf to assign each piece of data its own variable
a = fscanf(FID, '%g', [1,1]);
b = fscanf(FID, '%g', [1,1]);
c = fscanf(FID, '%g', [1,1]);
d = fscanf(FID, '%g', [1,1]);
e = fscanf(FID, '%g', [1,1]);
f = fscanf(FID, '%g', [1,1]);
g = fscanf(FID, '%g', [1,1]);
h = fscanf(FID, '%g', [1,1]);
i = fscanf(FID, '%g', [1,1]);

%Money calculations
x = ((b*c)+(e*f)+(h*i));

%Print result
fprintf('The total inventory costs $%0.2f \n', x)