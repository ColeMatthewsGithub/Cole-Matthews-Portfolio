function xone = NewtonSolve(xn,tolerance1,p,dp)
%NewtonSolve.m - A function to do Newton's Method of finding roots.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/14/2023


xone=0;
absoluteerror = inf;
if p(xn) ~= 0 && dp(xn) ~= 0
    while absoluteerror > tolerance1
        xone = (xn-(p(xn)/dp(xn)));
        xn = xone;
        absoluteerror = abs(xn-xone);
    end
end

end