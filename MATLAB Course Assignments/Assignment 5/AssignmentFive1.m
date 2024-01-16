%AssignmentFive1.m - A Program to compute the first 300 terms of an
%infinite series for estimating pi.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/17/2023

%Housekeeping
clear all;
clc;

%Create the text file and print the beginning
fid1 = fopen('PiEstimate.txt','w');
fprintf(fid1,'Terms  Pi Approx \n');

%Set up and execute the loop
i=1;
a=1;
b=3;
c=0;
while i<=300
c = c + (1/(a*b));
d = (c*8);
fprintf(fid1,'  %g     %0.6f \n',i,d);
i=i+1;
a=a+4;
b=b+4;
end