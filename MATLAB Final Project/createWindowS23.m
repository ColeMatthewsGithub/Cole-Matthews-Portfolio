function f = createWindowS23(w)
close all
% createWindowF22(w)
% function to create a square window whose width is w pixels and
% whose height is w pixels; its bottom left corner is placed
% 50 pixels up and 50 pixels to the right of the bottom left
% corner of the monitor
% This version of the function also generates a restricted zone in the top 
% left and bottom left of the square.
% (note: the function returns a handle to the window, if needed;
%  usage would then need to be  f=createWindowF22(w)

left = 50;
bottom = 50;
pos = [left bottom w w];
f = figure;
set (f, 'Position', pos)
set (f, 'MenuBar', 'none')
set (f, 'Name', 'AE 227 - Spring 2023')

x = [0 w];
y = [0 w];
hold on
axis equal
axis ([x y])
axis off

x1=[0,w,w,0,0];
y1=[0,0,w,w,0];
fill(x1,y1,[1,1,1]); %draw the boundary

% %Bottom Left
% x1 = [0,0,w/2,0];
% y1 = [0,w/2,0,0];
% fill(x1,y1,[0.5 0.5 0.5])

%Top Left
x2 = [0,0,w/2,0];
y2 = [w/2,w,w,w/2];
fill(x2,y2,[0.5 0.5 0.5])

% %Top Right
% x3 = [w/2,w,w];
% y3 = [w,w,w/2];
% fill(x3,y3,[0.5 0.5 0.5])

%Bottom right
x4 = [w,w,w/2];
y4 = [w/2,0,0];
fill(x4,y4,[0.5 0.5 0.5])

%Center Diagonal Filter
diff=.01*w*sqrt(2)/2;
x5 = [0,0,w/2-diff,w/2+diff,w,w];
y5 = [0,2*diff,w/2+diff,w/2-diff,w-2*diff,w];
fill(x5,y5,[0 1 0])

x5 = [0,2*diff,w/2+diff,w/2-diff,w-2*diff,w];
y5 = [0,0,w/2-diff,w/2+diff,w,w];
fill(x5,y5,[1 0 0])