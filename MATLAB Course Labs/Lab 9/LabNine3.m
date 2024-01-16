%LabNine3.m - A program to make a ball follow a sinusoidal path.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%3/31/2023

%Housekeeping
close all;
clear all;
clc
pause on;

%Creating the window and plotting the sine wave function
x = linspace(0,800,800);
y=(200*sin(x/(20*pi)))+300;
createWindow(800,600);
plot(x, y);

%Create and plot the ball
ball = drawBall(0,300,5,'red');
pause(0.5);

%Move the ball
i=0;
for i = 1:800
xMove(ball,1);
yMove(ball,(((200*sin(i/(20*pi)))+300)-((200*sin((i-1)/(20*pi)))+300)));
redraw
pause(.01);
end