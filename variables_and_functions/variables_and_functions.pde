/********   VARIABLES   ******/

int transformationCounter = 1;
int limit = 30;
int resetValue = 60;

/* SkateBoard points */

float[] p69 = {300.0, 225.0, 0.0, 1.0};
float[] p70 = {305.0, 220.0, 0.0, 1.0};
float[] p71 = {315.0, 230.0, 0.0, 1.0};
float[] p72 = {365.0, 230.0, 0.0, 1.0};
float[] p73 = {375.0, 220.0, 0.0, 1.0};
float[] p74 = {380.0, 225.0, 0.0, 1.0};
float[] p75 = {370.0, 235.0, 0.0, 1.0};
float[] p76 = {310.0, 235.0, 0.0, 1.0};

/* FRONT */
float[] p77 = {300.0, 225.0, 2.0, 1.0};
float[] p78 = {305.0, 220.0, 2.0, 1.0};
float[] p79 = {315.0, 230.0, 2.0, 1.0};
float[] p80 = {365.0, 230.0, 2.0, 1.0};
float[] p81 = {375.0, 220.0, 2.0, 1.0};
float[] p82 = {380.0, 225.0, 2.0, 1.0};
float[] p83 = {370.0, 235.0, 2.0, 1.0};
float[] p84 = {310.0, 235.0, 2.0, 1.0};


/* SkateBoard Tire 1 */
float[] p85 = {325.0, 235.0, 0.0, 1.0};
float[] p86 = {320.0, 240.0, 0.0, 1.0};
float[] p87 = {325.0, 245.0, 0.0, 1.0};
float[] p88 = {330.0, 240.0, 0.0, 1.0};

float[] p89 = {325.0, 235.0, 2.0, 1.0};
float[] p90 = {320.0, 240.0, 2.0, 1.0};
float[] p91 = {325.0, 245.0, 2.0, 1.0};
float[] p92 = {330.0, 240.0, 2.0, 1.0};


/* SkateBoard Tire 2 */
/*
float[] p89 = {350.0, 235.0, 1.0};
float[] p90 = {345.0, 240.0, 1.0};
float[] p91 = {350.0, 245.0, 1.0};
float[] p92 = {355.0, 240.0, 1.0};
*/


/* For Rotation Purpose */
float[][] translateInMatrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{-325.0 ,-240.0, -1.0, 1.0}};
float[][] translateOutMatrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{325.0 ,240.0, 1.0, 1.0}};



/* translate matrix */
float[][] t_matrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{1.5, 0.0, 0.0, 1.0}};
 /*    1  0  0  325
    =  0  1  0  240
       0  0  1  3
       0  0  0  1
 */


/* Inverse translate matrix */
float[][] inv_t_matrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{-1.5, 0.0, 0.0, 1.0}};
 /*    1  0  0  -325
    =  0  1  0  -240
       0  0  1  -1
       0  0  0  1
 */



/* mult matrix */
float[][] m;


// rotation angle
  float theta = radians(5); // convert degrees to radians


/* Rotate Z Matrix */
float[][] rotZMatrix = {{cos(theta),sin(theta),0.0,0.0},{-sin(theta),cos(theta),0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1.0}}; // roatate around z axis

/*     cos0 -sin0   0    0
    =  sin0  cos0   0    0
          0    0    1    0
          0    0    0    1
*/


/* Inverse Rotate Z Matrix */
float[][] inv_rotZMatrix = {{cos(theta), -sin(theta), 0.0, 0.0},{sin(theta), cos(theta), 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{0.0, 0.0, 0.0, 1.0}}; // roatate around z axis

/*     cos0   sin0   0    0
    =  -sin0  cos0   0    0
          0    0     1    0
          0    0     0    1
*/



/******* FUNCTIONS   ********/

void skateBoard()
{
  /* BACK */
  line(p69[0],p69[1],p69[2], p70[0],p70[1],p70[2]);
  line(p70[0],p70[1],p70[2], p71[0],p71[1],p71[2]);
  line(p71[0],p71[1],p71[2], p72[0],p72[1],p72[2]);
  line(p72[0],p72[1],p72[2], p73[0],p73[1],p73[2]);
  line(p73[0],p73[1],p73[2], p74[0],p74[1],p74[2]);
  line(p74[0],p74[1],p74[2], p75[0],p75[1],p75[2]);
  line(p75[0],p75[1],p75[2], p76[0],p76[1],p76[2]);
  line(p76[0],p76[1],p76[2], p69[0],p69[1],p69[2]);
  
  /* FRONT */
  line(p77[0],p77[1],p77[2], p78[0],p78[1],p78[2]);
  line(p78[0],p78[1],p78[2], p79[0],p79[1],p79[2]);
  line(p79[0],p79[1],p79[2], p80[0],p80[1],p80[2]);
  line(p80[0],p80[1],p80[2], p81[0],p81[1],p81[2]);
  line(p81[0],p81[1],p81[2], p82[0],p82[1],p82[2]);
  line(p82[0],p82[1],p82[2], p83[0],p83[1],p83[2]);
  line(p83[0],p83[1],p83[2], p84[0],p84[1],p84[2]);
  line(p84[0],p84[1],p84[2], p77[0],p77[1],p77[2]);
  
  /* CONNECTING */
  line(p69[0],p69[1],p69[2], p77[0],p77[1],p77[2]);
  line(p70[0],p70[1],p70[2], p78[0],p78[1],p78[2]);
  line(p71[0],p71[1],p71[2], p79[0],p79[1],p79[2]);
  line(p72[0],p72[1],p72[2], p80[0],p80[1],p80[2]);
  line(p73[0],p73[1],p73[2], p81[0],p81[1],p81[2]);
  line(p74[0],p74[1],p74[2], p82[0],p82[1],p82[2]);
  line(p75[0],p75[1],p75[2], p83[0],p83[1],p83[2]);
  line(p76[0],p76[1],p76[2], p84[0],p84[1],p84[2]);
   
}


void skateBoardTire1()
{
  /* BACK */
  line(p85[0],p85[1],p85[2], p86[0],p86[1],p86[2]);
  line(p86[0],p86[1],p86[2], p87[0],p87[1],p87[2]);
  line(p87[0],p87[1],p87[2], p88[0],p88[1],p88[2]);
  line(p88[0],p88[1],p88[2], p85[0],p85[1],p85[2]);
  
  /* FRONT  */
  line(p89[0],p89[1],p89[2], p90[0],p90[1],p90[2]);
  line(p90[0],p90[1],p90[2], p91[0],p91[1],p91[2]);
  line(p91[0],p91[1],p91[2], p92[0],p92[1],p92[2]);
  line(p92[0],p92[1],p92[2], p89[0],p89[1],p89[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p85[0],p85[1],p85[2], p89[0],p89[1],p89[2]);
  line(p86[0],p86[1],p86[2], p90[0],p90[1],p90[2]);
  line(p87[0],p87[1],p87[2], p91[0],p91[1],p91[2]);
  line(p88[0],p88[1],p88[2], p92[0],p92[1],p92[2]);
}

  
void skateBoardTire2()
{
  line(p89[0],p89[1],p89[2], p90[0],p90[1],p90[2]);
  line(p90[0],p90[1],p90[2], p91[0],p91[1],p91[2]);
  line(p91[0],p91[1],p91[2], p92[0],p92[1],p92[2]);
  line(p92[0],p92[1],p92[2], p89[0],p89[1],p89[2]);
}

void simpleTransform()
{          
  // tranformation matrix...
  
  //m = mult_matrix(rotZMatrix, t_matrix);
  
  /**
   m = mult_matrix(t_matrix, rotZMatrix);
  
  p85 = transform_point(m, p85);
  p86 = transform_point(m, p86);
  p87 = transform_point(m, p87);
  p88 = transform_point(m, p88);
  p89 = transform_point(m, p89);
  p90 = transform_point(m, p90);
  p91 = transform_point(m, p91);
  p92 = transform_point(m, p92);
  
  /**
  m = mult_matrix(inv_t_matrix, inv_rotZMatrix);
  
  p85 = transform_point(m, p85);
  p86 = transform_point(m, p86);
  p87 = transform_point(m, p87);
  p88 = transform_point(m, p88);
  p89 = transform_point(m, p89);
  p90 = transform_point(m, p90);
  p91 = transform_point(m, p91);
  p92 = transform_point(m, p92);
  **/
  
  /* Transform skateboard */
  /* BACK */
  p69 = transform_point(t_matrix, p69);
  p70 = transform_point(t_matrix, p70);
  p71 = transform_point(t_matrix, p71);
  p72 = transform_point(t_matrix, p72);
  p73 = transform_point(t_matrix, p73);
  p74 = transform_point(t_matrix, p74);
  p75 = transform_point(t_matrix, p75);
  p76 = transform_point(t_matrix, p76);
  /* FRONT */ 
  p77 = transform_point(t_matrix, p77);
  p78 = transform_point(t_matrix, p78);
  p79 = transform_point(t_matrix, p79);
  p80 = transform_point(t_matrix, p80);
  p81 = transform_point(t_matrix, p81);
  p82 = transform_point(t_matrix, p82);
  p83 = transform_point(t_matrix, p83);
  p84 = transform_point(t_matrix, p84);
  
  
  
  /* Transform Tire 1 */
  p85 = transform_point(t_matrix, p85);
  p86 = transform_point(t_matrix, p86);
  p87 = transform_point(t_matrix, p87);
  p88 = transform_point(t_matrix, p88);
  p89 = transform_point(t_matrix, p89);
  p90 = transform_point(t_matrix, p90);
  p91 = transform_point(t_matrix, p91);
  p92 = transform_point(t_matrix, p92);
  /*
  p85 = transform_point(rotZMatrix, p85);
  p86 = transform_point(rotZMatrix, p86);
  p87 = transform_point(rotZMatrix, p87);
  p88 = transform_point(rotZMatrix, p88);
  p89 = transform_point(rotZMatrix, p89);
  p90 = transform_point(rotZMatrix, p90);
  p91 = transform_point(rotZMatrix, p91);
  p92 = transform_point(rotZMatrix, p92);
  
  p85 = transform_point(inv_t_matrix, p85);
  p86 = transform_point(inv_t_matrix, p86);
  p87 = transform_point(inv_t_matrix, p87);
  p88 = transform_point(inv_t_matrix, p88);
  p89 = transform_point(inv_t_matrix, p89);
  p90 = transform_point(inv_t_matrix, p90);
  p91 = transform_point(inv_t_matrix, p91);
  p92 = transform_point(inv_t_matrix, p92);
  */
  
  
  transformationCounter++;
  
}


void invTrans()
{
  // tranformation matrix...    
  /**
  m = mult_matrix(inv_t_matrix, inv_rotZMatrix);
  
  
  p85 = transform_point(m, p85);
  p86 = transform_point(m, p86);
  p87 = transform_point(m, p87);
  p88 = transform_point(m, p88);
  p89 = transform_point(m, p89);
  p90 = transform_point(m, p90);
  p91 = transform_point(m, p91);
  p92 = transform_point(m, p92);
  */
  
  /* Transform skateboard */
  /* BACK */
  p69 = transform_point(inv_t_matrix, p69);
  p70 = transform_point(inv_t_matrix, p70);
  p71 = transform_point(inv_t_matrix, p71);
  p72 = transform_point(inv_t_matrix, p72);
  p73 = transform_point(inv_t_matrix, p73);
  p74 = transform_point(inv_t_matrix, p74);
  p75 = transform_point(inv_t_matrix, p75);
  p76 = transform_point(inv_t_matrix, p76);
  /* FRONT */ 
  p77 = transform_point(inv_t_matrix, p77);
  p78 = transform_point(inv_t_matrix, p78);
  p79 = transform_point(inv_t_matrix, p79);
  p80 = transform_point(inv_t_matrix, p80);
  p81 = transform_point(inv_t_matrix, p81);
  p82 = transform_point(inv_t_matrix, p82);
  p83 = transform_point(inv_t_matrix, p83);
  p84 = transform_point(inv_t_matrix, p84);
  
  
  
  /* Transform Tire 1 */
  p85 = transform_point(inv_t_matrix, p85);
  p86 = transform_point(inv_t_matrix, p86);
  p87 = transform_point(inv_t_matrix, p87);
  p88 = transform_point(inv_t_matrix, p88);
  p89 = transform_point(inv_t_matrix, p89);
  p90 = transform_point(inv_t_matrix, p90);
  p91 = transform_point(inv_t_matrix, p91);
  p92 = transform_point(inv_t_matrix, p92);
  
  
  transformationCounter++;
  
  if(transformationCounter > resetValue)
  {
    transformationCounter = 1;
    
  }
}

void applyRotation()
{
  
  for(int j = 44; j < 51; j++)
  {
    
    
  }
  
  p85 = transform_point(translateInMatrix, p85);
  p86 = transform_point(translateInMatrix, p86);
  p87 = transform_point(translateInMatrix, p87);
  p88 = transform_point(translateInMatrix, p88);
  p89 = transform_point(translateInMatrix, p89);
  p90 = transform_point(translateInMatrix, p90);
  p91 = transform_point(translateInMatrix, p91);
  p92 = transform_point(translateInMatrix, p92);
 
  p85 = transform_point(rotZMatrix, p85);
  p86 = transform_point(rotZMatrix, p86);
  p87 = transform_point(rotZMatrix, p87);
  p88 = transform_point(rotZMatrix, p88);
  p89 = transform_point(rotZMatrix, p89);
  p90 = transform_point(rotZMatrix, p90);
  p91 = transform_point(rotZMatrix, p91);
  p92 = transform_point(rotZMatrix, p92);
  
  p85 = transform_point(translateOutMatrix, p85);
  p86 = transform_point(translateOutMatrix, p86);
  p87 = transform_point(translateOutMatrix, p87);
  p88 = transform_point(translateOutMatrix, p88);
  p89 = transform_point(translateOutMatrix, p89);
  p90 = transform_point(translateOutMatrix, p90);
  p91 = transform_point(translateOutMatrix, p91);
  p92 = transform_point(translateOutMatrix, p92);
  
}
