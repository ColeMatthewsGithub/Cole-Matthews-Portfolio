%AssignmentThree2.m - A program to convert a set of rectangular coordinates into spherical coordinates
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/3/2023

%Housekeeping
clear all;
clc

%Input
fprintf('This is a program to convert a set of rectangular coordinates into spherical coordinates. \nPlease enter the rectangular coordinates below. \n');
fprintf(' \n');
a = input('What units will you be using? ("in", "ft", "m", or "km"): ', 's');
b = input('X-coordinate? : ');
c = input('Y-coordinate? : ');
d = input('Z-coordinate? : ');

%Convert the input to Meters because all other units of measurement suck
if a == 'km'
    bb = (b*1000);
    cc = (c*1000);
    dd = (d*1000);
elseif a == 'm'
    bb = b;
    cc = c;
    dd = d;
elseif a == 'ft'
    bb = (b/3.28084);
    cc = (c/3.28084);
    dd = (d/3.28084);
elseif a == 'in'
    bb = (b/39.37008);
    cc = (c/39.37008);
    dd = (d/39.37008);
end

%Convert to spherical coordinates
r = sqrt((bb^2)+(cc^2)+(dd^2));
theta = atan(cc/bb);
thing = atan((sqrt((bb^2)+(cc^2))/dd));

%Convert new spherical coordinates from the best unit back to the given
%unit, and convert theta and the other angle to degrees
thetatheta = (theta*(180/pi));
thingthing = (thing*(180/pi));
if a == 'km'
    rr = (r/1000);
elseif a == 'm'
    rr = r;
elseif a == 'ft'
    rr = (r*3.28084);
elseif a == 'in'
    rr = (r*39.37008);
end

%Print the result
fprintf('\n');
fprintf('r is %0.2f', rr);
fprintf(a);
fprintf('\n');
fprintf('θ is %0.2f°', thetatheta);
fprintf('\n');
fprintf('Φ is %0.2f°', thingthing);
fprintf('\n \n');