/**
*  @Creator    Muhammad Murtaza
*  @StudentID    [K00223470]
*  @CreationDate  24/11/2018
*  @Desc:      This file contains all transformation matrices that are used on different shapes
**/


/* translate matrix */
float[][] t_matrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{1.5, 0.0, 0.0, 1.0}};
 /*    1.0  0.0  0.0  1.5
    =  0.0  1.0  0.0  0.0
       0.0  0.0  1.0  0.0
       0.0  0.0  0.0  1.0
 */



/* Inverse translate matrix */
float[][] inv_t_matrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{-1.5, 0.0, 0.0, 1.0}};
 /*    1.0  0.0  0.0  -1.5
    =  0.0  1.0  0.0   0.0
       0.0  0.0  1.0   0.0
       0.0  0.0  0.0   1.0
 */



/* Scale Matrix */
float[][] scaleMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.1,0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1}};  // scale 1.0,1.1,1.0
 /*    sx  0   0   0 
    =  0  sy   0   0
       0  0    sz  0
       0  0    0   1
 */



/* Inverse Scale Matrix */
float[][] invScaleMatrix = {{1 / 1.0,0.0,0.0,0.0},{0.0,1 / 1.1,0.0,0.0},{0.0,0.0,1 / 1.0,0.0},{0.0,0.0,0.0,1}};  // scale back 1.0,1.1,1.0
/*     1/sx  0      0     0 
    =  0     1/sy   0     0
       0     0      1/sz  0
       0     0      0     1
*/


/* rotation angle */
float theta = radians(5); /* convert degrees to radians */




/* Rotate Z Matrix */
float[][] rotZMatrix = {{cos(theta),sin(theta),0.0,0.0},{-sin(theta),cos(theta),0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1.0}}; // rotate around z axis

/*     cos0 -sin0   0    0
    =  sin0  cos0   0    0
          0    0    1    0
          0    0    0    1
*/


/* Inverse Rotate Z Matrix */
float[][] inv_rotZMatrix = {{cos(theta), -sin(theta), 0.0, 0.0},{sin(theta), cos(theta), 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{0.0, 0.0, 0.0, 1.0}}; // flip rotation around z axis

/*     cos0   sin0   0    0
    =  -sin0  cos0   0    0
          0    0     1    0
          0    0     0    1
*/




/* For Translating shape to origin */
float[][] translateInMatrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{ 0.0, 0.0, 0.0, 1.0}};
 /*    1  0  0  0
    =  0  1  0  0
       0  0  1  0
       0  0  0  1
 */

/* For Translating shape back to its original position before moving it to origin */ 
float[][] translateOutMatrix = {{1.0, 0.0, 0.0, 0.0},{0.0, 1.0, 0.0, 0.0},{0.0, 0.0, 1.0, 0.0},{ 0.0, 0.0, 0.0, 1.0}};
/*     1  0  0  0
    =  0  1  0  0
       0  0  1  0
       0  0  0  1
 */

/* Updates the point value (which is passed as 2nd parameter) to carry the required transformation */
float[] transform_point(float[][] m, float[] p)
{

    float[] p_new = {0.0,0.0,0.0,0.0}; // handle 4 elements as its 3D calc
   
    p_new[0] = m[0][0] * p[0] + m[1][0] * p[1] + m[2][0] * p[2] + m[3][0]*p[3];
    p_new[1] = m[0][1] * p[0] + m[1][1] * p[1] + m[2][1] * p[2]+ m[3][1]*p[3];
    p_new[2] = m[0][2] * p[0] + m[1][2] * p[1] + m[2][2] * p[2] +m[3][2]*p[3]; 
    p_new[3] = m[0][3] * p[0] + m[1][3] * p[1] + m[2][3] * p[2] +m[3][3]*p[3]; 
  
    return p_new;
}
