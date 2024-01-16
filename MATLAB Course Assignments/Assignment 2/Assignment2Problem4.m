clear all
clc

disp('This is a program to calculate the centroid of a trapezoid measured from the longest base.');
disp('Please input the following values:');
disp(' ');

a = input('Short side? > ');
b = input('Long side? > ');
h = input('Height? > ');

c = ((1/3)*(((2*a)+b)/(a+b))*(h));

fprintf('The centroid of the trapezoid is %0.2f measured from the long side.', c);
disp(' ');