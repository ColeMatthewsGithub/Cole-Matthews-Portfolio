%AssignmentSix2_2.m - A program to simulate a game of vegas craps.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/25/2023

%Housekeeping
clear all;
clc;

%Input
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

%Print stuff
fprintf('The probability that the roller wins is %0.4f%%. \n',(100*(w/aa)));
fprintf('The probability that you tie with the roller is %0.4f%%. \n',((t/aa)*100));
fprintf('The probability that the roller loses is %0.4f%%. \n',(100*(l/aa)));
%disp('You should always bet on the roller.');