%AssignmentSix2_3.m - A program to simulate a game of craps with
%betting.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/25/2023

%Housekeeping
clear all;
clc;

%Input
x = input('How much are you betting? ($) >');
aa = input('Number of games? >');
aaa = aa-1;

%Do the loop
l=0;
w=0;
set = 0;
a = 0;
i=0;
t = 0;
for i = 1:aaa
a = ceil(6*rand)+ceil(6*rand);
    if (a == 11) || (a == 7)
    w = w + 1;
elseif (a == 2) || (a == 3)
    l = l + 1;
    elseif (a == 12)
        t = t + 1;
    else
        set = a;
       while (a ~= set)
           while (a ~= 7)
         a = ceil(6*rand)+ceil(6*rand);
           end
        end
        if (a == set)
            w = w + 1;
        elseif (a == 7)
            l = l + 1;
        else
            disp('ERROR 1');
        end
    end
    i=i+1;
end

fprintf('The expected value if you bet on the roller, assuming you bet $%g is $%0.2f. \n',x,(((l/aa)*0)+((w/aa)*(x*2))+((t/aa)*x)));
fprintf('The expected value if you bet against the roller, assuming you bet $%g is $%0.2f. \n',x,(((l/aa)*(x*2))+((w/aa)*0)+((t/aa)*x)));
disp('The better outcome is, by far, to bet on the roller.');