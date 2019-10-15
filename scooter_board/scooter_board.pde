// example 1...
/*  

tranforming points through matrix multiplication...  
pressing the mouse button turns on looping, and relasing it turns off looping

*/

//points
float[] p1 = {20.0,  20.0,  0.0,  1.0};

float[] p2 = {23.0,  20.0,  0.0,  1.0};

float[] p3 = {23.0,  21.0,  0.0,  1.0};

float[] p4 = {22.0,  21.0,  0.0,  1.0};

float[] p5 = {22.0,  25.0,  0.0,  1.0};


float[] p6 = {24.0,  25.0,  0.0,  1.0};

float[] p7 = {24.0,  26.0,  0.0,  1.0};
float[] p8 = {23.0,  26.0,  0.0,  1.0};
float[] p9 = {23.0,  27.0,  0.0,  1.0};
float[] p10 = {21.0, 27.0,  0.0,  1.0};
float[] p11 = {21.0, 26.0,  0.0,  1.0};
float[] p12 = {18.0, 26.0,  0.0,  1.0};
float[] p13 = {18.0, 27.0,  0.0,  1.0};
float[] p14 = {17.0, 27.0,  0.0,  1.0};
float[] p15 = {17.0, 26.0,  0.0,  1.0};
float[] p16 = {14.0, 26.0,  0.0,  1.0};
float[] p17 = {14.0, 27.0,  0.0,  1.0};

float[] p18 = {11.0, 27.0,  0.0,  1.0};
float[] p19 = {11.0, 25.0,  0.0,  1.0};
float[] p20 = {21.0, 25.0,  0.0,  1.0};
float[] p21 = {21.0, 21.0,  0.0,  1.0};
float[] p22 = {20.0, 21.0,  0.0,  1.0};



/*
  SQUARE 1 (1st-Tire) points
*/

float[] p45 = {15.0, 27.0,  0.0,  1.0};
float[] p46 = {16.0, 27.0,  0.0,  1.0};
float[] p47 = {16.0, 28.0,  0.0,  1.0};
float[] p48 = {15.0, 28.0,  0.0,  1.0};

float[] p49 = {15.0, 27.0,  1.0,  1.0};
float[] p50 = {16.0, 27.0,  1.0,  1.0};
float[] p51 = {16.0, 28.0,  1.0,  1.0};
float[] p52 = {15.0, 28.0,  1.0,  1.0};


/*
  SQUARE 2 (2nd-Tire) points
*/
float[] p53 = {19.0, 27.0,  0.0,  1.0};
float[] p54 = {20.0, 27.0,  0.0,  1.0};
float[] p55 = {20.0, 28.0,  0.0,  1.0};
float[] p56 = {19.0, 28.0,  0.0,  1.0};

float[] p57 = {19.0, 27.0,  5.0,  1.0};
float[] p58 = {20.0, 27.0,  5.0,  1.0};
float[] p59 = {20.0, 28.0,  5.0,  1.0};
float[] p60 = {19.0, 28.0,  5.0,  1.0};


/*
float[] p7 = {21.0,  14.0,  2.0,  1.0};

float[] p8 = {25.0,  14.0,  2.0,  1.0};

float[] p9 = {26.0,  15.0,  2.0,  1.0};

float[] p10 ={23.0,  19.0, 2.0,  1.0};
*/




// transform matrix

 
           
float[][] scaleMatrix = {{1.1,0.0,0.0,0.0},{0.0,1.1,0.0,0.0},{0.0,0.0,1.1,0.0},{0.0,0.0,0.0,1}};  // scale 1.1,1.1,1.1
 /*    1.1  0   0  0 
    =  0  1.1   0  0
       0  0   1.1  0
       0  0   0  1.1
 */

//define your rotation around Z matrix as being empty 4x4 with a diagonal of 1s
 float[][] rotateZMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1}};


// define your translate matrix as 4x4 matrix that translates by a value of 6 on all axes
 float[][] translateInMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{-15.5 ,-27.5 , -0.5, 1.0}};
 float[][] translateOutMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{15.5 ,-27.5 , 0.5, 1.0}};

float[][] m;  

void setup() 
{
  size(900, 900, P3D);
  camera(70.0, 35.0, 180.0, 50.0, 50.0, 0.0, 
       0.0, 1.0, 0.0);

  smooth();

  
  // rotation angle is 2 degrees
  float theta = radians(2); // convert degrees to radians
  
  // overwrite your rotate matrix values
  rotateZMatrix[0][0] = cos(theta);
  rotateZMatrix[0][1] = - sin(theta);
  rotateZMatrix[1][0] = sin(theta);
 rotateZMatrix[1][1] = cos(theta);

 /*    cos(theta) -sin(theta)   0       0
       sin(theta)  cos(theta)   0       0
           0             0      1       0
           0             0      0       1 
 */
            
  // tranformation matrix... 
// you can multiply two matrices to achieve a combined effect  
// but you need to define the matrices

//  m = mult_matrix(translateMatrix, rotateXMatrix); 
 
  
     

  
  loop();
  
  frameRate(40);
}

void draw() 
{

  fill(255);
  
  //myBox();
  
  /* For Scaling Matrix
  p1 = transform_point(scaleMatrix, p1);
  p2 = transform_point(scaleMatrix, p2);
  p3 = transform_point(scaleMatrix, p3);
  p4 = transform_point(scaleMatrix, p4);
  p5 = transform_point(scaleMatrix, p5);
  p6 = transform_point(scaleMatrix, p6);
  p7 = transform_point(scaleMatrix, p7);
  p8 = transform_point(scaleMatrix, p8);
  */
  
  /*
  p1 = transform_point(translateInMatrix, p1);
  p2 = transform_point(translateInMatrix, p2);
  p3 = transform_point(translateInMatrix, p3);
  p4 = transform_point(translateInMatrix, p4);
  p5 = transform_point(translateInMatrix, p5);
  p6 = transform_point(translateInMatrix, p6);
  p7 = transform_point(translateInMatrix, p7);
  p8 = transform_point(translateInMatrix, p8);
  p9 = transform_point(translateInMatrix, p9);
  p10 = transform_point(translateInMatrix, p10);
  
  
  
  //For Rotating Z Matrix
  p1 = transform_point(rotateZMatrix, p1);
  p2 = transform_point(rotateZMatrix, p2);
  p3 = transform_point(rotateZMatrix, p3);
  p4 = transform_point(rotateZMatrix, p4);
  p5 = transform_point(rotateZMatrix, p5);
  p6 = transform_point(rotateZMatrix, p6);
  p7 = transform_point(rotateZMatrix, p7);
  p8 = transform_point(rotateZMatrix, p8);
  p9 = transform_point(rotateZMatrix, p9);
  p10 = transform_point(rotateZMatrix, p10);
  
  
  
  p1 = transform_point(translateOutMatrix, p1);
  p2 = transform_point(translateOutMatrix, p2);
  p3 = transform_point(translateOutMatrix, p3);
  p4 = transform_point(translateOutMatrix, p4);
  p5 = transform_point(translateOutMatrix, p5);
  p6 = transform_point(translateOutMatrix, p6);
  p7 = transform_point(translateOutMatrix, p7);
  p8 = transform_point(translateOutMatrix, p8);
  p9 = transform_point(translateOutMatrix, p9);
  p10 = transform_point(translateOutMatrix, p10);
  */
  /* For Translate In */
  p45 = transform_point(translateInMatrix, p45);
  p46 = transform_point(translateInMatrix, p46);
  p47 = transform_point(translateInMatrix, p47);
  p48 = transform_point(translateInMatrix, p48);
  p49 = transform_point(translateInMatrix, p49);
  p50 = transform_point(translateInMatrix, p50);
  p51 = transform_point(translateInMatrix, p51);
  p52 = transform_point(translateInMatrix, p52);
  
  //For Rotating Z Matrix
  p45 = transform_point(rotateZMatrix, p45);
  p46 = transform_point(rotateZMatrix, p46);
  p47 = transform_point(rotateZMatrix, p47);
  p48 = transform_point(rotateZMatrix, p48);
  p49 = transform_point(rotateZMatrix, p49);
  p50 = transform_point(rotateZMatrix, p50);
  p51 = transform_point(rotateZMatrix, p51);
  p52 = transform_point(rotateZMatrix, p52);
  
  
  /* For Translate Out */
  p45 = transform_point(translateOutMatrix, p45);
  p46 = transform_point(translateOutMatrix, p46);
  p47 = transform_point(translateOutMatrix, p47);
  p48 = transform_point(translateOutMatrix, p48);
  p49 = transform_point(translateOutMatrix, p49);
  p50 = transform_point(translateOutMatrix, p50);
  p51 = transform_point(translateOutMatrix, p51);
  p52 = transform_point(translateOutMatrix, p52);
  
  
   background(0);
   
  
  myBox();
  tire1();
  tire2();

}



float[] transform_point(float[][] m, float[] p)
{

   float[] p_new = {0.0,0.0,0.0,0.0}; // handle 4 elements as its 3D calc
   
   p_new[0] = m[0][0] * p[0] + m[1][0] * p[1] + m[2][0] * p[2] + m[3][0]*p[3];
   p_new[1] = m[0][1] * p[0] + m[1][1] * p[1] + m[2][1] * p[2]+ m[3][1]*p[3];
   p_new[2] = m[0][2] * p[0] + m[1][2] * p[1] + m[2][2] * p[2] +m[3][2]*p[3]; 
   p_new[3] = m[0][3] * p[0] + m[1][3] * p[1] + m[2][3] * p[2] +m[3][3]*p[3]; 
  
   return p_new;
}



float[][] mult_matrix(float[][] m1, float[][] m2)
{

   float[][] m_new = {{0.0,0.0,0.0,0.0},{0.0,0.0,0.0,0.0},{0.0,0.0,0.0,0.0},{0.0,0.0,0.0,0.0}};
   
   m_new[0][0] = m1[0][0] * m2[0][0] + m1[1][0] * m2[0][1] + m1[2][0] * m2[0][2] + m1[3][0] * m2[0][3];
   m_new[0][1] = m1[0][1] * m2[0][0] + m1[1][1] * m2[0][1] + m1[2][1] * m2[0][2] + m1[3][1] * m2[0][3];
   m_new[0][2] = m1[0][2] * m2[0][0] + m1[1][2] * m2[0][1] + m1[2][2] * m2[0][2] + m1[3][2] * m2[0][3];
   m_new[0][3] = m1[0][3] * m2[0][0] + m1[1][3] * m2[0][1] + m1[2][3] * m2[0][2] + m1[3][3] * m2[0][3];

   m_new[1][0] = m1[0][0] * m2[1][0] + m1[1][0] * m2[1][1] + m1[2][0] * m2[1][2] + m1[3][0] * m2[1][3];
   m_new[1][1] = m1[0][1] * m2[1][0] + m1[1][1] * m2[1][1] + m1[2][1] * m2[1][2] + m1[3][1] * m2[1][3];
   m_new[1][2] = m1[0][2] * m2[1][0] + m1[1][2] * m2[1][1] + m1[2][2] * m2[1][2] + m1[3][2] * m2[1][3];
   m_new[1][3] = m1[0][3] * m2[1][0] + m1[1][3] * m2[1][1] + m1[2][3] * m2[1][2] + m1[3][3] * m2[1][3];


   m_new[2][0] = m1[0][0] * m2[2][0] + m1[1][0] * m2[2][1] + m1[2][0] * m2[2][2] + m1[3][0] * m2[2][3];
   m_new[2][1] = m1[0][1] * m2[2][0] + m1[1][1] * m2[2][1] + m1[2][1] * m2[2][2] + m1[3][1] * m2[2][3];
   m_new[2][2] = m1[0][2] * m2[2][0] + m1[1][2] * m2[2][1] + m1[2][2] * m2[2][2] + m1[3][2] * m2[2][3];
   m_new[2][3] = m1[0][3] * m2[2][0] + m1[1][3] * m2[2][1] + m1[2][3] * m2[2][2] + m1[3][3] * m2[2][3];
   
   m_new[3][0] = m1[0][0] * m2[3][0] + m1[1][0] * m2[3][1] + m1[2][0] * m2[3][2] + m1[3][0] * m2[3][3];
   m_new[3][1] = m1[0][1] * m2[3][0] + m1[1][1] * m2[3][1] + m1[2][1] * m2[3][2] + m1[3][1] * m2[3][3];
   m_new[3][2] = m1[0][2] * m2[3][0] + m1[1][2] * m2[3][1] + m1[2][2] * m2[3][2] + m1[3][2] * m2[3][3];
   m_new[3][3] = m1[0][3] * m2[3][0] + m1[1][3] * m2[3][1] + m1[2][3] * m2[3][2] + m1[3][3] * m2[3][3];


  
   return m_new;
}


/* 
setting a low framerate() and noLoop() in setup() 
and turning looping on and off with mousePress and mouseRelease
allows us to see each itteration of 'draw()'
*/

void mousePressed() 
{ 
  loop(); 
} 
 
void mouseReleased() 
{ 
  noLoop(); 
} 

void tire1()
{
  strokeWeight(12);
  stroke(255, 0,0) ; //red
  line(p45[0],p45[1],p45[2], p46[0],p46[1],p46[2]); // p45 to p46
  line(p46[0],p46[1],p46[2], p47[0],p47[1],p47[2]); //p46 to p47
  line(p47[0],p47[1],p47[2], p48[0],p48[1],p48[2]);//p47 to p48
  line(p48[0],p48[1],p48[2], p45[0],p45[1],p45[2]);//p48 to p45
  
  line(p49[0],p49[1],p49[2], p50[0],p50[1],p50[2]); // p49 to p50
  line(p50[0],p50[1],p50[2], p51[0],p51[1],p51[2]); //p50 to p51
  line(p51[0],p51[1],p51[2], p52[0],p52[1],p52[2]);//p51 to p52
  line(p52[0],p52[1],p52[2], p49[0],p49[1],p49[2]);//p52 to p49
  
  //Connecting
  line(p45[0],p45[1],p45[2], p49[0],p49[1],p49[2]); // p45 to p49
  line(p46[0],p46[1],p46[2], p50[0],p50[1],p50[2]); //p46 to p50
  line(p47[0],p47[1],p47[2], p51[0],p51[1],p51[2]);//p47 to p51
  line(p48[0],p48[1],p48[2], p52[0],p52[1],p52[2]);//p48 to p52

  
}

void tire2()
{
  strokeWeight(1);
  stroke(255, 0,0) ; //red
  line(p53[0],p53[1],p53[2], p54[0],p54[1],p54[2]); // p1 to p2
  line(p54[0],p54[1],p54[2], p55[0],p55[1],p55[2]); //p2 to p3
  line(p55[0],p55[1],p55[2], p56[0],p56[1],p56[2]);//p3 to p4
  line(p56[0],p56[1],p56[2], p53[0],p53[1],p53[2]);//p4 to p5

  
}



void myBox () 
{
  strokeWeight(1);
  stroke(255, 0,0) ; //red
  line(p1[0],p1[1],p1[2], p2[0],p2[1],p2[2]); // p1 to p2
  line(p2[0],p2[1],p2[2], p3[0],p3[1],p3[2]); //p2 to p3
  line(p3[0],p3[1],p3[2], p4[0],p4[1],p4[2]);//p3 to p4
  line(p4[0],p4[1],p4[2], p5[0],p5[1],p5[2]);//p4 to p5
  line(p5[0],p5[1],p5[2], p6[0],p6[1],p6[2]);//p5 to p6
  
  line(p6[0],p6[1],p6[2], p7[0],p7[1],p7[2]);//p6 to p7
  line(p7[0],p7[1],p7[2], p8[0],p8[1],p8[2]);//p7 to p8
  line(p8[0],p8[1],p8[2], p9[0],p9[1],p9[2]);//p8 to p9
  line(p9[0],p9[1],p9[2], p10[0],p10[1],p10[2]);//p9 to p10
  line(p10[0],p10[1],p10[2], p11[0],p11[1],p11[2]);//p10 to p11
  
  line(p11[0],p11[1],p11[2], p12[0],p12[1],p12[2]);//p11 to p12
  line(p12[0],p12[1],p12[2], p13[0],p13[1],p13[2]);//p12 to p13
  line(p13[0],p13[1],p13[2], p14[0],p14[1],p14[2]);//p13 to p14
  
  line(p14[0],p14[1],p14[2], p15[0],p15[1],p15[2]);//p14 to p15
  
  line(p15[0],p15[1],p15[2], p16[0],p16[1],p16[2]);//p15 to p16
  line(p16[0],p16[1],p16[2], p17[0],p17[1],p17[2]);//p16 to p17
  line(p17[0],p17[1],p17[2], p18[0],p18[1],p18[2]);//p17 to p18
  
  line(p18[0],p18[1],p18[2], p19[0],p19[1],p19[2]);//p18 to p19
  line(p19[0],p19[1],p19[2], p20[0],p20[1],p20[2]);//p19 to p20
  
  line(p20[0],p20[1],p20[2], p21[0],p21[1],p21[2]);//p20 to p21
  
  line(p21[0],p21[1],p21[2], p22[0],p22[1],p22[2]);//p21 to p22
  line(p22[0],p22[1],p22[2], p1[0],p1[1],p1[2]);//p22 to p1
  
  
  
  /*
  line(p6[0],p6[1],p6[2], p7[0],p7[1],p7[2]); // p6 to p7
  line(p7[0],p7[1],p7[2], p8[0],p8[1],p8[2]); //p7 to p8
  line(p8[0],p8[1],p8[2], p9[0],p9[1],p9[2]);//p8 to p9
  line(p9[0],p9[1],p9[2], p10[0],p10[1],p10[2]);//p9 to p10
  line(p10[0],p10[1],p10[2], p6[0],p6[1],p6[2]);//p10 to p6
  
  
  //Connecting shapes
  line(p1[0],p1[1],p1[2], p6[0],p6[1],p6[2]); // p1 to p6
  line(p2[0],p2[1],p2[2], p7[0],p7[1],p7[2]); //p2 to p7
  line(p3[0],p3[1],p3[2], p8[0],p8[1],p8[2]);//p3 to p8
  line(p4[0],p4[1],p4[2], p9[0],p9[1],p9[2]);//p4 to p9
  line(p5[0],p5[1],p5[2], p10[0],p10[1],p10[2]);//p5 to p10
  */
  
}
