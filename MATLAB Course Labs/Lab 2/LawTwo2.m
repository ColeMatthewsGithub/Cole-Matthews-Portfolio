%LabTwo2.m - program to calculate wing loading
%Cole Matthews
%1/24/2023
%AE 227

%Housekeeping
clear all
clc

%Prompt for mass and wing area. "a" will be mass and "b" will be the area
a = input('Mass of aircraft? (slugs) > ');
b = input('Total wing area? (square meters) > ');

%Convert slugs to kilograms.  c will be the mass in kilos
c = (a*14.5939);

%Use the gravity on earth to calculate force, in newtons.  d will be force
d = (c*9.81);

% solve for wing loading.  e wil be wing loading
e = (d/b);

% display answer
fprintf('The wing loading of the aircraft is %0.4f Pascals\n', e)