%LabFive2.m - A program to calculate a monthly statement of the balance
%still owed on a used car loan.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/14/2023

%Housekeeping
clear all;
clc;

%Explain what the program is about to do
disp('This is a program to produce monthly statements for the remaining');
disp('balance on a 10,000 USD loan at 2% monthly interest for the first');
disp('5,000 USD, then 1% monthly interest for the other 5,000 USD assuming');
disp('payments are made in increments of 300 USD every month, and interest');
disp('is compounded before each payment is made.');
disp(' ');

%Let b be equal to balance, in USD
b = 10000;

%Calculate at 2% interest
i=0;
while b>5000
    b = b*1.02;
    b = b-300;
    i=i+1;
    fprintf('The remaining balance after %g month(s) is %0.2f USD. \n',i,b);
end

%Calculate at 1% interest
while b<=5000 && b>0
    b = b*1.01;
    b = b-300;
    i=i+1;
    if b<0
        bb=300-abs(b);
        fprintf('The remaining balance after %g month(s) is 0 USD, with a final payment of %0.2f USD. \n',i,bb);
        break
    end
    fprintf('The remaining balance after %g month(s) is %0.2f USD. \n',i,b);
end