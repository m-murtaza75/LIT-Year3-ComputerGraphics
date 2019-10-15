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
  
  stroke(0);
  building1();
  
  stroke(255);
  building2();
  
  stroke(160, 180, 102);
  doubleTower();
  
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
  
  
  //stroke(23, 98, 193); /* Light Blue */
}
