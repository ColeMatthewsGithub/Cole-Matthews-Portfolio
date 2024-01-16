function x2 = SecantSolve(interval1,interval2,relativeerrortolerance)
%SecantSolve.m - A program to solve for roots using the secant line method.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/14/2023

    interval22 = (fn10_2(interval2));
    interval11 = (fn10_2(interval1));
    if (abs(interval11)) < (abs(interval22))
        holdinterval1 = interval1;
        holdinterval2 = interval2;
        interval1 = holdinterval1;
        interval2 = holdinterval2;
    end
x2 = interval2-(interval22*((interval1-interval2)/(interval11-interval22)));
x22 = abs(fn10_2(x2));
iteration=0;
while x22 > relativeerrortolerance
interval1 = interval2;
interval2 = x2;
iteration = iteration + 1;
x2 = interval2-((fn10_2(interval2))*((interval1-interval2)/((fn10_2(interval1))-(fn10_2(interval2)))));
fprintf('Relative error for iteration %g was %0.9f. \n',iteration,x2);
x22 = abs(fn10_2(x2));
end

end