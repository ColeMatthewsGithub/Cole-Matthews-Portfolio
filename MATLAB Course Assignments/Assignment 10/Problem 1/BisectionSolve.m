function [c,number] = BisectionSolve(interval1,interval2,tolerance)
%Function for Assignment 10.
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/12/2023

a=interval1;
b=interval2;
i=0;
c=0;
number=0;
while i==0
    c = ((a+b)/2);
    fofc = fn10_1(c);
    if fofc > 0
        b = c;
    elseif fofc < 0
        a = c;
    end
    
    if (b-a) < tolerance
        i=i+1;
    end
    number = number + 1;
end
fprintf('The bisection method used %g iterations. \n',number);
end