%LabTwo3 - program to calculate the third side of a triangle
%Cole Matthews
%1/24/2023
%AE 227

%Housekeeping
clear all
clc

%Prompt for known sides and angle
disp('Enter known sides, a and b, and the angle between them, C')
a = input('Side 1? > ');
b = input ('Side 2? > ');
C = input ('Angle Between? (degrees) > ');

%Convert degrees to radians
x = (C*(pi/180));

%Apply law of cosines 
c = sqrt((a^2)+(b^2)-(2*a*b*cos(x)));

%Display
fprintf('The third is %0.4f cm long\n', c);
