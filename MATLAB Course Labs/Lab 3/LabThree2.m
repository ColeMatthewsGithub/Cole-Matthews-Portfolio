%LabThree2.m - A program to calculate the force, spring constant, and
%potential energy of each spring
%
%Cole Matthews
%2/2/2023

%Housekeeping
clear all;
clc;

%Open and read the file
FID = fopen('springs.txt', 'r');

%Read everything
a = fscanf(FID, '%f %*f', [1,4]);
frewind(FID);
b = fscanf(FID, '%*f %f', [1,4]);

%Do the math
x = (a./b);
xx = (x.^2);
u = (1/2)*(b.*xx);

%Close that file
fclose(FID);

%Write the new data to a new file
FID2 = fopen('springsanswers.txt', 'w');
fprintf(FID2, 'Spring#:                       1     2     3         4 \n');
fprintf(FID2, 'Force(N):                     %g    %g    %g        %g \n', a);
fprintf(FID2, 'Spring constant, k (N/m):     %g   %g   %g       %g \n', b);
fprintf(FID2, 'Potential Energu, U (J):       %g    %g   %g   %g \n', u);

