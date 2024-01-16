%AssignmentFour1.m - A program to calculate expressions using FuncF, FuncG,
%and FuncH
% 2/11/2023
%Cole Matthews
%AE 227 - Engineering Digital Computation

%Housekeeping
clear all;
clc;

i = FuncF(1.6);
ii = FuncG(1.8,-4.2);
iii = FuncH(3.1,-0.3,4.5);
iv = FuncF(FuncG(2.5,-0.4));
v = FuncG(FuncF(1.3),FuncG(1,FuncF(-0.7)));
vi = FuncF(FuncF(-1.3));

%Display
fprintf('f(1.6) = %0.4f \ng(1.8,-4.2) = %0.4f \nh(3.1,-0.3,4.5) = %0.4f \nf(g(2.5,-0.4) = %0.4f \ng(f(1.3),g(1,f(-0.7))) = %0.4f \nf(f(-1.3)) = %0.4f \n',i,ii,iii,iv,v,vi);