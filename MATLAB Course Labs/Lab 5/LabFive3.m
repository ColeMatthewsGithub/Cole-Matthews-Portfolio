%LabFive3.m - A program to read in numbers from a file one at a time until a negative even
%number is read in or there are no numbers left to be read, and calculate the average of the
%numbers that were read in, not including the negative even number.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/14/2023

%Housekeeping
clear all;
clc;

%Explain what the file does
disp('This program will read in numbers from a file one at a time until a negative even');
disp('number is read in or there are no numbers left to be read, and calculate the average of the');
disp('numbers that were read in, not including the negative even number.');
disp(' ');
disp('If the first number in the file is both negative and even, this program will display');
disp('"The first number in the file is negative and even."');
disp(' ');
disp(' ');

%Open the files, and assign each one a file identifier
fid1=fopen("lab5_1.txt");
fid2=fopen("lab5_2.txt");
fid3=fopen("lab5_3.txt");

%Loop
i=0;
j=0;
aaaaa = 0;
aaaaaa = 0;
while i<1
    a = fscanf(fid1,"%g ",[1,1]);
    aa = floor(a/2);
    aaa = a/2;
    aaaa = aaa-aa;
    aaaaa = aaaaa + a;
    aaaaaa = aaaaaa + 1;
    if a<0 && aaaa == 0
        i=i+1;
        break
    end
    j = j + feof(fid1);
end

%Print
if j == 1
    aaaaa;
else 
aaaaa = aaaaa - a;
end
aaaaaaa = aaaaa/aaaaaa;
disp('For lab5_1.txt: ');
if j == 1
    disp('The first number in the file is negative and even.');
else
fprintf('The average of the numbers before encountering a negative even number is %g. \n',aaaaaaa);
fprintf('The number of numbers used to determine the average was %g numbers. \n',aaaaaa);
end
disp(' ');

%Loop again
i=0;
j=0;
bbbbb = 0;
bbbbbb = 0;
while i<1
    b = fscanf(fid2,"%g ",[1,1]);
    bb = floor(b/2);
    bbb = b/2;
    bbbb = bbb-bb;
    bbbbb = bbbbb + b;
    bbbbbb = bbbbbb + 1;
    if b<0 && bbbb == 0
        i=i+1;
        break
    end
    j = j + feof(fid2);
end

%Display again
if j == 1
    bbbbb;
else 
bbbbb = bbbbb - b;
end
bbbbbbb = bbbbb/bbbbbb;
disp('For lab5_2.txt: ');
if j == 0
    fprintf('The first number in the file is negative and even. \n')
else
fprintf('The average of the numbers before encountering a negative even number is %g. \n',bbbbbbb);
fprintf('The number of numbers used to determine the average was %g numbers. \n',bbbbbb);
end
disp(' ');
%Loop a third time
i=0;
j=0;
ccccc = 0;
cccccc = 0;
while i<1 && j == 0
    c = fscanf(fid3,"%g ",[1,1]);
    cc = floor(c/2);
    ccc = c/2;
    cccc = ccc-cc;
    ccccc = ccccc + c;
    cccccc = cccccc + 1;
    if c<0 && cccc == 0
        i=i+1;
        break
    end
     j = j + feof(fid3);
end

%Display a third time
if j == 1
    ccccc;
else 
ccccc = ccccc - c;
end
ccccccc = ccccc/cccccc;
disp('For lab5_3.txt: ');
if j == 0
    fprintf('The first number in the file is negative and even. \n')
else
fprintf('The average of the numbers before encountering a negative even number is %g. \n',ccccccc);
fprintf('The number of numbers used to determine the average was %g numbers. \n',cccccc);
end
disp(' ');