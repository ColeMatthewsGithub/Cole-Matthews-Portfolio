%AssignmentSeven1.m - A program to simulate successive generations of
%WireWorld.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%2/10/2023

%Housekeeping
clear all;
clc;

%Setup array
a = [0 0 0 0 0 0 0 0 0 0 0 0 0 0
2 1 3 3 3 0 0 0 0 0 0 0 0 0
0 0 0 0 0 3 0 3 0 0 0 0 0 0
0 0 0 0 3 3 3 3 3 3 3 3 3 3
0 0 0 0 3 0 0 3 0 0 0 0 0 0
0 0 0 0 3 3 3 3 3 3 3 3 0 0
0 0 0 0 0 3 0 0 0 0 0 0 3 0
3 3 3 3 3 0 0 0 0 0 0 0 3 0
0 0 0 0 0 0 0 0 0 0 0 0 3 0];

for n=1:2

aa=size(a,1);
aaa=size(a,2);
%Do the loop
i=0;
j=0;
k=0;
b=zeros(aa,aaa);

for k=1:20
for i=1:aaa
    for j=1:aa
        if a(i,j)==3 && (a(i,j)==1 || a(i-1,j)==1 || a(i-1,j-1)==1 || a(i,j-1)==1 || a(i+1,j)==1 || a(i,j+1)==1 || a(i+1,j+1)==1)
    b(i,j) = 1;
        elseif a(i,j)==2
    b(i,j) = 3;
        elseif a(i,j)==1
    b(i,j) = 2;
        elseif a(i,j)==0
    b(i,j) = 0;
        end
    end
end

b
a=b;
end
a = [0 0 0 0 0 0 0 0 0 0 0 0 0 0
2 1 3 3 3 0 0 0 0 0 0 0 0 0
0 0 0 0 0 3 0 3 0 0 0 0 0 0
0 0 0 0 3 3 3 3 3 3 3 3 3 3
0 0 0 0 3 0 0 3 0 0 0 0 0 0
0 0 0 0 3 3 3 3 3 3 3 3 0 0
0 0 0 0 0 3 0 0 0 0 0 0 3 0
2 1 3 3 3 0 0 0 0 0 0 0 3 0
0 0 0 0 0 0 0 0 0 0 0 0 3 0];
end