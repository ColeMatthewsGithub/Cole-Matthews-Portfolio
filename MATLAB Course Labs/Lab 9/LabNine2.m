%LabNine2.m - A program to animate LabNine1.m one unit at a time and add a
%third ball.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%3/31/2023

%Housekeeping
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
ball_3 = drawBall(350,275,15,'green');
pause(1);

%Move the stuff
i=0;
for i = 1:150
xMove(ball_1,1);
yMove(ball_1,-(130/150));
redraw
pause(.005);
end

j=0;
for j = 1:140
xMove(ball_2,-(120/140));
yMove(ball_2,1);
xMove(ball_3,-(1/sqrt(2)));
yMove(ball_3,-(1/sqrt(2)));
redraw
pause(.005);
end