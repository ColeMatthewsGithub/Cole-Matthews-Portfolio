%LabNine1.m - A program to draw two balls and move them to across the
%screen.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%3/31/2023

%Housekeeping
clear all;
close all;
clc;
pause on;

%Create the window
createWindow(700,550);

%Create the balls
ball_1 = drawBall(120,275,25);
ball_2 = drawBall(300,140,10,'red');
pause(1);

%Move the stuff
xMove(ball_1,150);
pause(.5);
yMove(ball_1,-130);
pause(.5);

xMove(ball_2,-120);
pause(.5);
yMove(ball_2,140);
pause(.5);

%Get the centers
[x1,y1]=getCenter(ball_1);
[x2,y2]=getCenter(ball_2);

%Print the stuff
fprintf('The coordinates of ball 1 are (%g,%g) \n',x1,y1);
fprintf('The coordinates of ball 1 are (%g,%g) \n',x2,y2);
