%AssignmentSix1.m - A program to convert a file of test scores into a file
%of letter grades.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/23/2023

%Housekeeping
clear all;
clc;

%Open the files
fid = fopen('testscores.txt','r');
fid2 = fopen('FinalGrades.txt','w');

%Read stuff into a matrix
a = fscanf(fid,'%*g %g',[1,inf]);
frewind(fid);

%Sandard deviation and min/max and mean
b = std(a);
mean = mean(a);
minumum = min(a);
maximum = max(a);

%Do the loop
i=0;
counta = 0;
countb = 0;
countc = 0;
countd = 0;
countf = 0;
while i==0
c = fscanf(fid,'%g',[1,1]);
d = fscanf(fid,'%g',[1,1]);
    if d >= (mean + (1.5*b))
    counta = counta+1;
    fprintf(fid2,'%g     A \n',c);
elseif d >= (mean + (0.5*b))
    countb = countb + 1;
    fprintf(fid2,'%g     B \n',c);
elseif d >= (mean - (0.5*b))
    countc = countc + 1;
    fprintf(fid2,'%g     C \n',c);
elseif d >= (mean - (1.5*b))
    countd = countd + 1;
    fprintf(fid2,'%g     D \n',c);
elseif d <= (mean - (1.5*b))
    countf = countf + 1;
    fprintf(fid2,'%g     F \n',c);
    end
i = feof(fid);
end

%Print stuff to the command line
fprintf('There were %g As. \n',counta);
fprintf('There were %g Bs. \n',countb);
fprintf('There were %g Cs. \n',countc);
fprintf('There were %g Ds. \n',countd);
fprintf('There were %g Fs. \n',countf);
fprintf('The lowest score was a %0.1f. \n',minumum);
fprintf('The highest score was a %0.1f. \n',maximum);
fprintf('The average score was %0.1f. \n',mean);
fprintf('The standard deviation was %0.4f. \n',b);