/**
*  @Creator    Muhammad Murtaza
*  @StudentID    [K00223470]
*  @CreationDate  26/11/2018
*  @Desxc:     This file is used to call the 3D-shapes along with their respective transformation which makes a platform scene
**/

void platformScene()
{
  background(57, 55, 219);
  
  if(translateRotateCounter <= limit)
  {
    applyRotation();
    
    applyTranslate();
  }
  else
  {
    flipRotation();
    
    inv_Translate();
  }
  
  rotateDiamond();
  
  if(scaleCounter <= scaleLimit)
  {
    applyScale();
  }
  else
  {
    flipScale();
  }
  
  stroke(0); /* Black */
  building1();
  building2();
  doubleTower();
  
  
  stroke(236, 237, 34); /* Yellow */
  window1();
  window2();
  window3();
  window4();
  
  
  
  
  //stroke(17, 40, 98); /* Navy Blue */
  
  
  stroke(5, 255, 194); /* Aqua */
  character();
  
  stroke(110, 111, 110); /* Grey */
  platformGround();
  
  stroke(118, 57, 0); /* Dark Brown */
  skateBoard();
  simpleTile();
  
  stroke(0);
  skateBoardTire1();
  skateBoardTire2();
  diamond();
  
  stroke(227, 18, 46); /* Dark brown */
  spikes();
  

}
