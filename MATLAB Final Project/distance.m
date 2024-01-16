function dis = distance(xo,yo,xmin,ymin,xmax,ymax)
   %A function to find the distance between a line and a point.
   %
   %Cole Matthews
   %4/25/2023
   %AE 227 - Engineering Digital Computation
	n = abs((xmax-xmin)*(ymin-yo)-(xmin-xo)*(ymax-ymin));
	d = sqrt(((xmax-xmin)^2)+((ymax-ymin)^2));
	dis = (n./d);
end