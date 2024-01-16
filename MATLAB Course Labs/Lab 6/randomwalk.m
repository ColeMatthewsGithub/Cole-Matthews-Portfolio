%randomwalk.m - program to simulate a random walk
%Anthony Vizzini
%AE 227
%25 February 2020

clear all
clc

% Determine the number of walks in simulation
n = input('Number of walks: '); 

% These are the parameters of the problem
docklength = 50;
dockwidth = 20;
lrprob = 0.2959;
maxsteps = 1000; %To prevent an infinite loop

%Initialize
nsafe = 0;

for i = 1 : n
     steps = 0;
     x = 0;
     y = 0;
     % Take a step as long as you are on the dock
     while x<=docklength && abs(y)<=dockwidth/2 && steps<1000
          steps = steps + 1;
          r = rand;
          if r < 1 - 2*lrprob
               x = x + 1;
          elseif r < 1 - lrprob
               y = y + 1;
          else
               y = y - 1;
          end
     end
     % I am now off of the dock
     if x > docklength % Success if beyond the length of the dock
          nsafe = nsafe +1;
     end
end
prob=100 * nsafe/n;
fprintf('After %d random walks, success is at %.1f%%.\n',n,prob)