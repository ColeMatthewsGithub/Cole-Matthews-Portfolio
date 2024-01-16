%AssignmentEleven1.m - A Program to plot some random points with a
%structure and plot a line of best fit
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/20/2023

%Housekeeping
clear all;
close all;
clc;

%Create the x vector
x = 1:0.5:10;
x2 = 1:0.0001:10;

%Create the y vector
y = (0.06*(x.^3))-(0.742*(x.^2))+(3.52*x)+7.19;
y2 = (0.06*(x2.^3))-(0.742*(x2.^2))+(3.52*x2)+7.19;

%Moify y
for i = 1:length(y)
    if rand < 0.5
    y(i) = y(i)-1.42;
else
    y(i) = y(i)+1.42;
end
end

%Plot the functions
hold on
[P3] = polyfit(x,y,3);
degree3 = polyval(P3,x2);
plot3 = plot(x2,degree3,"green");

[P4] = polyfit(x,y,4);
degree4 = polyval(P4,x2);
plot4 = plot(x2,degree4,"red");

plot1 = plot(x2,y2,"black");

%Plot the data
plot(x,y,"bs");

%Give everything a name
aaa = sprintf('Y = (%g)X^3 + (%g)X^2 + (%g)X + (%g)',P3(1),P3(2),P3(3),P3(4));
title(aaa);
xlabel('X axis');
ylabel('Y axis');
vectorthing = [plot1 plot3 plot4];
legend(vectorthing, {'Original function', 'Cubic line of best fit', 'Quadratic line of best fit'});