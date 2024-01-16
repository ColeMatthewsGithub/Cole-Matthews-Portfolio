%AssignmentThree3.m - A program to 
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/4/2023

%Housekeeping
clear all;
clc;

%Open the file and read stuff
FID = fopen('drywettemp.txt');
a = fscanf(FID, '%g', [1,1]);
b = fscanf(FID, '%g', [1,1]);

%Do the math
d = (6.11*exp((17.501*a)/(240.86+a)));
w = (6.11*exp((17.501*b)/(240.86+b)));
rh = (((w-(0.6686*(1+(0.001115*b))*(a-b)))/d)*100);

%Display stuff
fprintf('Given a dry-bulb temperature of %0.2f degrees Fahrenheit and \n', a);
fprintf('a wet-bulb temperature of %0.2f degrees Fahrenheit, the \n', b);
fprintf('relative humidity is %0.2f%%. \n', rh);
fprintf('\n');

%Determine comfort zone -- source: https://blog.wellcare-global.com/blog/what-is-the-human-comfort-zone-for-temperature-and-humidity
c = 0;
if a < 71.6
    fprintf('Too hot to be in the comfort zone. \n');
else c = (c+1);
end
if a > 80.6
    fprintf('Too cold to be in the comfort zone. \n');
else c = (c+1);
end
if rh < 40
    fprintf('Too dry to be in the comfort zone. \n');
else c = (c+1);
end
 if rh > 60
     fprintf('Too humid to be in the comfort zone. \n');
 else c = (c+1);
 end
if c == 4
    fprintf('In the comfort zone. \n');
end