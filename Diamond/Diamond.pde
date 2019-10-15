// example 1...
/*  

tranforming points through matrix multiplication...  
pressing the mouse button turns on looping, and relasing it turns off looping

*/

//points
float[] p1 = {20.0,  15.0,  0.0,  1.0};

float[] p2 = {21.0,  14.0,  0.0,  1.0};

float[] p3 = {25.0,  14.0,  0.0,  1.0};

float[] p4 = {26.0,  15.0,  0.0,  1.0};

float[] p5 = {23.0,  19.0,  0.0,  1.0};



float[] p6 = {20.0,  15.0,  2.0,  1.0};

float[] p7 = {21.0,  14.0,  2.0,  1.0};

float[] p8 = {25.0,  14.0,  2.0,  1.0};

float[] p9 = {26.0,  15.0,  2.0,  1.0};

float[] p10 ={23.0,  19.0, 2.0,  1.0};





// transform matrix

 
           
float[][] scaleMatrix = {{1.1,0.0,0.0,0.0},{0.0,1.1,0.0,0.0},{0.0,0.0,1.1,0.0},{0.0,0.0,0.0,1.1}};  // scale 1.1,1.1,1.1
 /*    1.1  0   0  0 
    =  0  1.1   0  0
       0  0   1.1  0
       0  0   0  1.1
 */

//define your rotation around Z matrix as being empty 4x4 with a diagonal of 1s
 float[][] rotateZMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1}};


// define your translate matrix as 4x4 matrix that translates by a value of 6 on all axes
 float[][] translateInMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{-23.0 ,-16.5 , -1.0, 1.0}};
 float[][] translateOutMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{23.0 ,16.5 , 1.0, 1.0}};

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
  

  
   background(0);
  
  strokeWeight(5);
  drawAxes();
   
  
  myBox();

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

void myBox () 
{
  strokeWeight(1);
  stroke(255, 0,0) ; //red
  line(p1[0],p1[1],p1[2], p2[0],p2[1],p2[2]); // p1 to p2
  line(p2[0],p2[1],p2[2], p3[0],p3[1],p3[2]); //p2 to p3
  line(p3[0],p3[1],p3[2], p4[0],p4[1],p4[2]);//p3 to p4
  line(p4[0],p4[1],p4[2], p5[0],p5[1],p5[2]);//p4 to p5
  line(p5[0],p5[1],p5[2], p1[0],p1[1],p1[2]);//p5 to p1
  
  
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
  
  
}

void drawAxes() 
{
 stroke(255, 0, 0);
  line(-50, 0, 0, 50, 0, 0);
  
  stroke(0, 255, 0);
  line(0, -50, 0, 0, 50, 0);
  
  stroke(0, 0, 255);
  line(0, 0, -50, 0, 0, 50);
  
}
