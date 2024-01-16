animate.m is a program to animate the movement of balls around a screen.
The balls are to bounce around within the boundaries of the simulation, 
colliding with each other and passing through a double-sided filter.
The balls also change color rapidly as a special feature.

The ball-to-wall interaction algorithm uses a series of checks
and changes to determine where the balls are in the simulation
relative to each of the walls.  The algorithm uses the
function "distance.m" to check where the center of each ball
is relative to each line (walls).  If this distance returned
by the function is less than the radius of each ball, the 
algorithm will change the direction of that ball to create
a 90 degree deflection off the wall.

The ball-to-ball interaction works by checking the position of
each ball individually against the position of every other ball.
It does this by using the function "distance2.m" which checks
the distance between two points.  If the distance between the
ball being checked and any other ball is less than two times the
ball radius, a collision will occur.  When the collision occurs,
one of three possibilities happens.  The balls collide head on and
deflect at 180 degrees, one ball hits the backside of another ball
and deflects at 90 degrees, or both balls hit each other at off
angles and both deflect at 90 degrees.  This algorithm also uses
the function "slope.m" to calculate the slope between two balls as
a condition for the head on collisions.  All ball-to-ball collision 
algorithm will change the direction the colliding balls are headed
just as the ball-to-wall algorithm does.

The first function is named "distance.m."  This function takes the
inputs "xo,yo,xmin,ymin,xmax,ymax" where xo,yo defines a point
and xmin,ymin xmax,ymax defines two points that create a line.
This function outputs "dis" which is the distance between the point
and the line defined by the two points.
The next function is named "distance2.m."  This function takes the
inputs "x1,y1,x2,y2" where x1,y1 defines a point and x2,y2 also
defines a point.  This function finds the distance, which outputs as
"d2," between the two points.
The last function is named "slope.m."  This function takes the inputs
"x1,y1,x2,y2" and finds the slope of the line created by the two
points x1,y1 and x2,y2.  This function outputs "dis."

The special feature is the rapid color changing of the balls.  The
balls change color on each iteration, and the color is completely
randomized.  Unfortunately, there is no epilepsy warning for this
program.