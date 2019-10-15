/**
*  @Creator    Muhammad Murtaza
*  @StudentID    [K00223470]
*  @CreationDate  24/11/2018
*  @Desc:      This file contains the setup and draws the platform scene on the output window
**/

void setup() 
{
  size(540, 300, P3D);
            /* PeasyCam(refers current sketch, targetX, targetY, targetZ, Radius of the ball on which camera is moving) */   
  camera = new PeasyCam(this, 230, 160, 70, 260);
  smooth();
  
  frameRate(15);
}


void draw() 
{
    platformScene();
  
}
