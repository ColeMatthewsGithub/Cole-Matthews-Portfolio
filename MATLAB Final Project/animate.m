%animate.m - A program to simulates the interaction of balls with walls and with each other
%according to the rules given in the project guidelines.
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/4/2023

%Housekeeping
close all;
clear all;
clc

%Read from file or do user input.  Collect and store information
%First, initialize all vairables here
i=0;
positionx=0;
positiony=0;
numberofballs=0;
ii=1;
iiii=0;
iiiiii=0;

initialinput = input('Enter "0" if this program is to read from a file, and "1" if this program is to read from your input. >');
disp(' ');
if initialinput == 1
    windowwidth = input('Width of the window? >');
    ballradius = input('Radius of all of the balls? >');
    numberofballs = input('Number of balls? >');
    initialdirection = input('Initial direction of the balls (degrees)? >');
    while ii <= numberofballs
        positionx = [positionx,randi([0+ballradius,windowwidth-ballradius])];
        positiony = [positiony,randi([0+ballradius,windowwidth-ballradius])];
        ii=ii+1;
    end
    positionx(positionx < 1) = [];
    positiony(positiony < 1) = [];
elseif initialinput == 0
    askforfile = input('What is the name and file extension of the file to read from? >','s');
    disp(' ');
    fid = fopen(askforfile,'r');
    formatspec = ('%g');
    windowwidth = fscanf(fid,formatspec,[1,1]);
    ballradius = fscanf(fid,formatspec,[1,1]);
    initialdirection = fscanf(fid,formatspec,[1,1]);
    
    positionread = fscanf(fid,formatspec,[2,inf]);
    positionx = positionread(1,:);
    positiony = positionread(2,:);
    numberofballs = size(positionx);
    numberofballs = numberofballs(1,2);
    
end

%Start the plotting
arrayofdirection = zeros(2,numberofballs);
createWindowS23(windowwidth);
xvectorboundary = [0 0 (windowwidth/2) windowwidth windowwidth (windowwidth/2) 0];
yvectorboundary = [0 (windowwidth/2) windowwidth windowwidth (windowwidth/2) 0 0];

%%FOR DEBUG ONLY | Shows lines
%rightboundaryline = plot([windowwidth/2, windowwidth],[0,windowwidth/2],Color='m');
%leftboundaryline = plot([0, windowwidth/2],[windowwidth/2,windowwidth],Color='m');
%filterline = plot([0,windowwidth],[0,windowwidth],Color='m');
%%FOR DEBUG ONLY | Shows lines

%Do the simulation
for iii = 1:numberofballs
    %Checks
    xc=positionx(iii);
    yc=positiony(iii);
    ballcheck = 1;
    for iiii = 1:numberofballs
        if distance2(xc,yc,positionx(iiii),positiony(iiii)) <= (ballradius*2)
            ballcheck = 0;
        end
    end
    boundaryposition = inpolygon(xc,yc,xvectorboundary,yvectorboundary);
    linecheck = 1;
    if distance(xc,yc,0,windowwidth/2,windowwidth/2,windowwidth) <= ballradius
        linecheck = 0;
    elseif distance(xc,yc,windowwidth/2,0,windowwidth,windowwidth/2) <= ballradius
        linecheck = 0;
    elseif distance(xc,yc,0,0,windowwidth,windowwidth) <= ballradius
        linecheck = 0;
    end
    %End Checks
    
    %Respawning
    while boundaryposition == 0 || linecheck == 0 || ballcheck == 0
        xc = [randi([0+ballradius,windowwidth-ballradius])];
        yc = [randi([0+ballradius,windowwidth-ballradius])];
        %Chekcs inside respawning
        boundaryposition = inpolygon(xc,yc,xvectorboundary,yvectorboundary);
        linecheck = 1;
        if distance(xc,yc,0,windowwidth/2,windowwidth/2,windowwidth) <= ballradius
            linecheck = 0;
        elseif distance(xc,yc,windowwidth/2,0,windowwidth,windowwidth/2) <= ballradius
            linecheck = 0;
        elseif distance(xc,yc,0,0,windowwidth,windowwidth) <= ballradius
            linecheck = 0;
        end
        ballcheck = 1;
        for iiii = 1:numberofballs
            if distance2(xc,yc,positionx(iiii),positiony(iiii)) <= (ballradius*2)
                ballcheck = 0;
            end
        end
    end
    %Checks inside respawning
    %End Respawning
    
    %Actual Spawning of the balls
    if initialinput == 1
        positionx(iii) = xc;
        positiony(iii) = yc;
        ball(iii) = drawBall(positionx(iii),positiony(iii),ballradius,'r');
    else
        ball(iii) = drawBall(positionx(iii),positiony(iii),ballradius,'r');
    end
    %End Actual Spawining of the balls
end
redraw
pause on

collissioncheck = zeros(1,numberofballs);

%Make stuff move
postcollisiondirection = (initialdirection(ones(1,numberofballs)));
while 0 == 0
    iiiii=1;
    for iiiii = 1:numberofballs
        %Start Collissions
        
        if distance(positionx(iiiii),positiony(iiiii),0,windowwidth/2,windowwidth/2,windowwidth) <= ballradius %TOP LINE
            if postcollisiondirection(iiiii) == 0
                postcollisiondirection(iiiii) = 90;
            elseif postcollisiondirection(iiiii) == 315
                postcollisiondirection(iiiii) = 135;
            elseif postcollisiondirection(iiiii) == 270
                postcollisiondirection(iiiii) = 180;
            end
        end
        
        if distance(positionx(iiiii),positiony(iiiii),windowwidth/2,0,windowwidth,windowwidth/2) <= ballradius %BOTTOM LINE
            if postcollisiondirection(iiiii) == 180
                postcollisiondirection(iiiii) = 270;
            elseif postcollisiondirection(iiiii) == 135
                postcollisiondirection(iiiii) = 315;
            elseif postcollisiondirection(iiiii) == 90
                postcollisiondirection(iiiii) = 0;
            end
        end
        
        if distance(positionx(iiiii),positiony(iiiii),0,0,windowwidth/2,0) <= ballradius %BOTTOM HOROZONTAL CORNER
            if postcollisiondirection(iiiii) == 225
                postcollisiondirection(iiiii) = 315;
            elseif postcollisiondirection(iiiii) == 180
                postcollisiondirection(iiiii) = 0;
            elseif postcollisiondirection(iiiii) == 135
                postcollisiondirection(iiiii) = 45;
            end
        end
        
        if distance(positionx(iiiii),positiony(iiiii),0,0,0,windowwidth/2) <= ballradius %BOTTOM VERTICAL CORNER
            if postcollisiondirection(iiiii) == 315
                postcollisiondirection(iiiii) = 45;
            elseif postcollisiondirection(iiiii) == 270
                postcollisiondirection(iiiii) = 90;
            elseif postcollisiondirection(iiiii) == 225
                postcollisiondirection(iiiii) = 135;
            end
        end
        
        if distance(positionx(iiiii),positiony(iiiii),windowwidth/2,windowwidth,windowwidth,windowwidth) <= ballradius %TOP HOROZONTAL CORNER
            if postcollisiondirection(iiiii) == 315
                postcollisiondirection(iiiii) = 225;
            elseif postcollisiondirection(iiiii) == 0
                postcollisiondirection(iiiii) = 180;
            elseif postcollisiondirection(iiiii) == 45
                postcollisiondirection(iiiii) = 135;
            end
        end
        
        if distance(positionx(iiiii),positiony(iiiii),windowwidth,windowwidth/2,windowwidth,windowwidth) <= ballradius %TOP VERTICAL CORNER
            if postcollisiondirection(iiiii) == 45
                postcollisiondirection(iiiii) = 315;
            elseif postcollisiondirection(iiiii) == 90
                postcollisiondirection(iiiii) = 270;
            elseif postcollisiondirection(iiiii) == 135
                postcollisiondirection(iiiii) = 225;
            end
        end
        
        if distance(positionx(iiiii),positiony(iiiii),windowwidth/2,windowwidth/2,windowwidth,windowwidth) <= ballradius && positiony(iiiii)-(ballradius*sqrt(2)) > windowwidth/2 %TOP FILTER
            if postcollisiondirection(iiiii) == 135
                postcollisiondirection(iiiii) = 315;
            end
        elseif distance(positionx(iiiii),positiony(iiiii),0,0,windowwidth/2,windowwidth/2) <= ballradius %BOTTOM FILTER
            if postcollisiondirection(iiiii) == 315
                postcollisiondirection(iiiii) = 135;
            end
        end
        
        %Ball collissions
        x1 = positionx(iiiii);
        y1 = positiony(iiiii);
        for j = iiiii:numberofballs
                %Change color
    color = ([rand rand rand]);
    set(ball(j), 'FaceColor', color);
    %End change color
            x2 = positionx(j);
            y2 = positiony(j);
            if distance2(x1,y1,x2,y2) <= ballradius*2
                %Head on
                if slope(x1,y1,x2,y2) == 1 || slope(x1,y1,x2,y2) == -1
                    if postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 225
                        postcollisiondirection(iiiii) = 225;
                        postcollisiondirection(iiiii) = 45;
                        collissioncheck(iiiii) = 1;
                        
                    elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 45
                        postcollisiondirection(iiiii) = 45;
                        postcollisiondirection(iiiii) = 225;
                        collissioncheck(iiiii) = 1;
                        
                    elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 315
                        postcollisiondirection(iiiii) = 315;
                        postcollisiondirection(j) = 135;
                        collissioncheck(iiiii) = 1;
                        
                    elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 135
                        postcollisiondirection(iiiii) = 135;
                        postcollisiondirection(j) = 315;
                        collissioncheck(iiiii) = 1;
                    end
                end
                %END Head on
                if slope(x1,y1,x2,y2) ~= 1 || slope(x1,y1,x2,y2) ~= -1
                %Off angle head on collissions
                if postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 135 && x2>x1
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 45;
                    collissioncheck(iiiii) = 1;
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 315 && x1>x2
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 225;
                    collissioncheck(iiiii) = 1;
                    
                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 135 && x1>x2
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 225;
                    collissioncheck(iiiii) = 1;
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 315 && x2>x1
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 45;
                    collissioncheck(iiiii) = 1;
                    
                elseif postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 225 && x2>x1
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 135;
                    collissioncheck(iiiii) = 1;
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 45 && x1>x2
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 315;
                    collissioncheck(iiiii) = 1;
                    
                elseif postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 225 && x2>x1
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 315;
                    collissioncheck(iiiii) = 1;
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 45 && x1>x2
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 135;
                    collissioncheck(iiiii) = 1;
                end
                %END Off angle head on collissions
                %90 degree normal collissions
                if postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 315
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 45;
                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 45
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 315;
                    
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 225
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 135;
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 135
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 225;
                    
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 45
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 135;
                elseif postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 135
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 45;
                    
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 315
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 225;
                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 225
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 315;
                end
                %END 90 degree normal collissions
                %Backside collissions
                if postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 135 && x2>x1
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 135;
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 45 && x1>x2
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 315;
                
                elseif postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 315 && x2>x1
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 315;
                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 45 && x1>x2
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 135;

                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 225 && x2>x1
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 315;
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 135 && x1>x2
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 135;

                elseif postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 315 && x1>x2
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 225;
                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 45 && x2>x1
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 45;

                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 225 && x1>x2
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 225;
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 315 && x2>x1
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 45;

                elseif postcollisiondirection(iiiii) == 45 && postcollisiondirection(j) == 135 && x1>x2
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 225;
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 45 && x2>x1
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 45;

                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 135 && x1>x2
                    postcollisiondirection(iiiii) = 225;
                    postcollisiondirection(j) = 45;
                elseif postcollisiondirection(iiiii) == 135 && postcollisiondirection(j) == 225 && x2>x1
                    postcollisiondirection(iiiii) = 45;
                    postcollisiondirection(j) = 225;

                elseif postcollisiondirection(iiiii) == 315 && postcollisiondirection(j) == 225 && x2>x1
                    postcollisiondirection(iiiii) = 315;
                    postcollisiondirection(j) = 135;
                elseif postcollisiondirection(iiiii) == 225 && postcollisiondirection(j) == 315 && x1>x2
                    postcollisiondirection(iiiii) = 135;
                    postcollisiondirection(j) = 315;

                end
                %END backside collissions
                
                
                
                
                
                
                end
            end
        end
        %END Ball collissions
        
        %End Collissions
        %Start Movement
        if postcollisiondirection(iiiii) == 45
            xMove(ball(iiiii),1);
            yMove(ball(iiiii),1);
            positionx(iiiii) = positionx(iiiii) + 1;
            positiony(iiiii) = positiony(iiiii) + 1;
        elseif postcollisiondirection(iiiii) == 135
            xMove(ball(iiiii),1);
            yMove(ball(iiiii),-1);
            positionx(iiiii) = positionx(iiiii) + 1;
            positiony(iiiii) = positiony(iiiii) - 1;
        elseif postcollisiondirection(iiiii) == 225
            xMove(ball(iiiii),-1);
            yMove(ball(iiiii),-1);
            positionx(iiiii) = positionx(iiiii) - 1;
            positiony(iiiii) = positiony(iiiii) - 1;
        elseif postcollisiondirection(iiiii) == 315
            xMove(ball(iiiii),-1);
            yMove(ball(iiiii),1);
            positionx(iiiii) = positionx(iiiii) - 1;
            positiony(iiiii) = positiony(iiiii) + 1;
        elseif postcollisiondirection(iiiii) == 0
            %xMove(ball(iiiii),0);
            yMove(ball(iiiii),1);
            %positionx(iiiii) = positionx(iiiii) + 0;
            positiony(iiiii) = positiony(iiiii) + 1;
        elseif postcollisiondirection(iiiii) == 90
            xMove(ball(iiiii),1);
            %yMove(ball(iiiii),0);
            positionx(iiiii) = positionx(iiiii) + 1;
            %positiony(iiiii) = positiony(iiiii) + 0;
        elseif postcollisiondirection(iiiii) == 180
            %xMove(ball(iiiii),0);
            yMove(ball(iiiii),-1);
            %positionx(iiiii) = positionx(iiiii) + 0;
            positiony(iiiii) = positiony(iiiii) - 1;
        elseif postcollisiondirection(iiiii) == 270
            xMove(ball(iiiii),-1);
            %yMove(ball(iiiii),0);
            positionx(iiiii) = positionx(iiiii) - 1;
            %positiony(iiiii) = positiony(iiiii) + 0;
        end
        %End Movememnt
    end
    redraw
end