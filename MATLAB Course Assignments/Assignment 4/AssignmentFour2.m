%AssignmentFour2.m - A program to calculate Mach number
% 2/11/2023
%Cole Matthews
%AE 227 - Engineering Digital Computation

%Housekeeping
clear all;
clc;

%Prompt for input
a = input('Enter the air speed (mph): ');
b = input('Enter the altitude (ft): ');


%Get the temperature
c = (0.0003048*b);
t = stdatmosK(c);

%Deal with stdatmosK
s = SpeedOfSound(t);

%Calculate Mach number
d = (a/s);

%Display
fprintf('At an air speed of %g mph and at altitude of %g ft, \n',a,b);
fprintf('the Mach number is %0.2f. \n',d);