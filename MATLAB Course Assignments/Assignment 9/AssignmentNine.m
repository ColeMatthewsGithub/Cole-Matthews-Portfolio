%AssignmentNine.m - A program to create a plot of data from given values of the price of gas and outside temperature
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/1/2023

%Housekeeping
clear all;
close all;
clc
pause on;

%open the file
fid = fopen('GraphData.txt','r');

%plot the lines and make the graph
x = 40:100;
y = (-0.0035*x) + 3.25;
y2 = (-0.0000313*(x.^2)) + (0.000804*x) + 3.10;
thing1 = plot(x,y,'green');
hold on
thing2 = plot(x,y2,'red');
title('Outside Temperature versus Price of Gas');
xlabel('Outside Temperature (Degrees Fahrenheit)');
ylabel('Price of Gas ($/gallon)');


%Plot the data
i=0;
while i == 0
a = fscanf(fid,'%g',[1,1]);
b = fscanf(fid,'%g',[1,1]);
plot(a,b,'-o','MarkerEdgeColor','blue');
i=i+feof(fid);
end

%Put the legend down here so we don't label each point in the legend
%This took me way to ling to figure out lmao
legend([thing1 thing2],'Line of best fit','Quadratic curve of best fit');
