%AssignmentSeven.m - A program to read a file into a matrix, replace the
%CPI with % increase from the previous month, determine the month in each 
%year that had the greatest magnitude percent change, and determine the
%greteast % change in CPI each month using built in functions, and
%calculate the monthly average monthly increase/decrease in each year.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/7/2023

%Housekeeping
clear all;
clc;

%Read the file into a matrix
FID = fopen('cpi.txt','r');
FID2 = fopen('cpipct.txt','w');
a = load("cpi.txt");

%Change to %increase
a(:,1) = 2000+a(:,1);

i=0;
j=0;
b=a;
for i=1:size(b,1)
    for j=2:size(b,2)
        b(1,2) = 0.0000;
        b(i,j) = ((a(i,j)-a(i,j-1))/(a(i,j)+a(i,j-1)))*100;
    end
end
writematrix(b,'cpipct.txt');
cpipct = b;

%All of the years
c=0;
for k=1:size(b,1)
    c(k,:) = max(b(k,:));
end

%Largest % change
l=0;
d=0;
e=b;
e(:,1)=0;
f=0;
for l=1:size(b,1)
    d(:,l) = max(e(l,:));
    f=find(e==(max(e(l,:))));
    fprintf('The largest percent increase in %g was in month %g at %g%%. \n',c(l,1),f,d(1,l));
end

disp(' ');
%Average monthly increase/decrease
m=0;
g=0;
for m=1:size(b,1)
    g(:,m) = mean(e(m,:));
    fprintf('The average monthly increase/decrease in %g is %g%%. \n',c(m,1),abs(g(1,m)));
end
