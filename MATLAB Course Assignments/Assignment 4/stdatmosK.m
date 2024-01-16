function temp=stdatmosK(alt)

%stdatmosK.m - function to determine the temperature (deg K) 
% in the standard atmosphere, given an altitude in km.
% An error is indicated by a return value of -1
% Anthony Vizzini - AE 227 - 19 February 2021

temp = -1;
if alt > 105
     temp = -1;
elseif alt > 90
     temp = 165.66 + (alt-90)*4;
elseif alt > 79
     temp = 165.66;
elseif alt > 53
     temp = 282.66 - (alt-53)*4.5;
elseif alt > 47
     temp = 282.66;
elseif alt > 25
     temp = 216.66 + (alt-25)*3;
elseif alt > 11
     temp = 216.66;
elseif alt > 0
     temp = 288.16 - alt*6.5;
end
