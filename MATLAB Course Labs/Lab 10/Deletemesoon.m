clear all;
close all;
clc;

hold on
x=-10:0.01:10;
y=0.05*x.^3+x.^2+20*x-80+200*x.*sin(.2*x);
plot1 = plot(x,y);


y2=0*x;
plot2 = plot(x,y2);
circle = plot(1.17778,0,'-o','MarkerEdgeColor','blue');
hold off