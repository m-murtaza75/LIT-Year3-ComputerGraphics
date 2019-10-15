/**
*  @Creator    Muhammad Murtaza
*  @StudentID    [K00223470]
*  @CreationDate  25/11/2018
*  @Desc:      This file contains all the variables and functions used for creating shapes and transformations
**/


/********   VARIABLES   ******/

float translateX = 0.0;
float translateY = 0.0;
float translateZ = 0.0;
int translateRotateCounter = 1;
int limit = 40;
int resetValue = 80;

int scaleCounter = 1;
int scaleLimit = 3;
int scaleResetValue = 6;


/* Building 1 shape points */
/* BACK */
float[] p1 =  {50.0, 25.0,  -60.0, 1.0};
float[] p2 =  {100.0, 25.0, -60.0, 1.0};
float[] p3 =  {100.0, 30.0, -60.0, 1.0};
float[] p4 =  {95.0, 30.0,  -60.0, 1.0};
float[] p5 =  {95.0,  45.0, -60.0, 1.0};
float[] p6 =  {110.0, 55.0, -60.0, 1.0};
float[] p7 =  {110.0, 60.0, -60.0, 1.0};
float[] p8 =  {105.0, 60.0, -60.0, 1.0};
float[] p9 =  {105.0, 75.0, -60.0, 1.0};
float[] p10 = {120.0, 85.0, -60.0, 1.0};
float[] p11 = {120.0, 90.0, -60.0, 1.0};
float[] p12 = {115.0, 90.0, -60.0, 1.0};
float[] p13 = {115.0, 125.0,-60.0, 1.0};
float[] p14 = {40.0,  125.0,-60.0, 1.0};
float[] p15 = {40.0,  60.0, -60.0, 1.0};
float[] p16 = {35.0,  60.0, -60.0, 1.0};
float[] p17 = {35.0,  55.0, -60.0, 1.0};
float[] p18 = {50.0,  45.0, -60.0, 1.0};
/* FRONT */
float[] p19 =  {50.0, 25.0,  -45.0, 1.0};
float[] p20 =  {100.0, 25.0, -45.0, 1.0};
float[] p21 =  {100.0, 30.0, -45.0, 1.0};
float[] p22 =  {95.0, 30.0,  -45.0, 1.0};
float[] p23 =  {95.0,  45.0, -45.0, 1.0};
float[] p24 =  {110.0, 55.0, -45.0, 1.0};
float[] p25 =  {110.0, 60.0, -45.0, 1.0};
float[] p26 =  {105.0, 60.0, -45.0, 1.0};
float[] p27 =  {105.0, 75.0, -45.0, 1.0};
float[] p28 = {120.0, 85.0,  -45.0, 1.0};
float[] p29 = {120.0, 90.0,  -45.0, 1.0};
float[] p30 = {115.0, 90.0,  -45.0, 1.0};
float[] p31 = {115.0, 125.0, -45.0, 1.0};
float[] p32 = {40.0,  125.0, -45.0, 1.0};
float[] p33 = {40.0,  60.0,  -45.0, 1.0};
float[] p34 = {35.0,  60.0,  -45.0, 1.0};
float[] p35 = {35.0,  55.0,  -45.0, 1.0};
float[] p36 = {50.0,  45.0,  -45.0, 1.0};



/* Character shape points */
/* BACK */
float[] p37 = {35.0, 185.0, 0.0, 1.0};
float[] p38 = {90.0, 185.0, 0.0, 1.0};
float[] p39 = {75.0, 200.0, 0.0, 1.0};
float[] p40 = {90.0, 215.0, 0.0, 1.0};
float[] p41 = {85.0, 220.0, 0.0, 1.0};
float[] p42 = {75.0, 205.0, 0.0, 1.0};
float[] p43 = {75.0, 240.0, 0.0, 1.0};
float[] p44 = {70.0, 240.0, 0.0, 1.0};
float[] p45 = {70.0, 225.0, 0.0, 1.0};
float[] p46 = {55.0, 225.0, 0.0, 1.0};
float[] p47 = {55.0, 240.0, 0.0, 1.0};
float[] p48 = {50.0, 240.0, 0.0, 1.0};
float[] p49 = {50.0, 205.0, 0.0, 1.0};
float[] p50 = {40.0, 220.0, 0.0, 1.0};
float[] p51 = {35.0, 215.0, 0.0, 1.0};
float[] p52 = {50.0, 200.0, 0.0, 1.0};

/* FRONT */
float[] p53 = {35.0, 185.0, 2.0, 1.0};
float[] p54 = {90.0, 185.0, 2.0, 1.0};
float[] p55 = {75.0, 200.0, 2.0, 1.0};
float[] p56 = {90.0, 215.0, 2.0, 1.0};
float[] p57 = {85.0, 220.0, 2.0, 1.0};
float[] p58 = {75.0, 205.0, 2.0, 1.0};
float[] p59 = {75.0, 240.0, 2.0, 1.0};
float[] p60 = {70.0, 240.0, 2.0, 1.0};
float[] p61 = {70.0, 225.0, 2.0, 1.0};
float[] p62 = {55.0, 225.0, 2.0, 1.0};
float[] p63 = {55.0, 240.0, 2.0, 1.0};
float[] p64 = {50.0, 240.0, 2.0, 1.0};
float[] p65 = {50.0, 205.0, 2.0, 1.0};
float[] p66 = {40.0, 220.0, 2.0, 1.0};
float[] p67 = {35.0, 215.0, 2.0, 1.0};
float[] p68 = {50.0, 200.0, 2.0, 1.0};




/* SkateBoard points */
/* BACK */
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


/* SkateBoard Tire 1 points */
float[] p85 = {325.0, 235.0, 0.0, 1.0};
float[] p86 = {320.0, 240.0, 0.0, 1.0};
float[] p87 = {325.0, 245.0, 0.0, 1.0};
float[] p88 = {330.0, 240.0, 0.0, 1.0};

float[] p89 = {325.0, 235.0, 5.0, 1.0};
float[] p90 = {320.0, 240.0, 5.0, 1.0};
float[] p91 = {325.0, 245.0, 5.0, 1.0};
float[] p92 = {330.0, 240.0, 5.0, 1.0};


/* SkateBoard Tire 2 points */

/* BACK */
float[] p93 = {350.0, 235.0, 0.0, 1.0};
float[] p94 = {345.0, 240.0, 0.0, 1.0};
float[] p95 = {350.0, 245.0, 0.0, 1.0};
float[] p96 = {355.0, 240.0, 0.0, 1.0};

/* FRONT */
float[] p97 = {350.0, 235.0, 5.0, 1.0};
float[] p98 = {345.0, 240.0, 5.0, 1.0};
float[] p99 = {350.0, 245.0, 5.0, 1.0};
float[] p100 ={355.0, 240.0, 5.0, 1.0};


/* SPIKES shape points */
/* BACK */
float[] p109 = {150.0, 155.0, 0.0, 1.0};
float[] p110 = {160.0, 175.0, 0.0, 1.0};
float[] p111 = {170.0, 155.0, 0.0, 1.0};
float[] p112 = {180.0, 175.0, 0.0, 1.0};
float[] p113 = {190.0, 155.0, 0.0, 1.0};
float[] p114 = {200.0, 175.0, 0.0, 1.0};
float[] p115 = {210.0, 155.0, 0.0, 1.0};
float[] p116 = {220.0, 175.0, 0.0, 1.0};
float[] p117 = {230.0, 155.0, 0.0, 1.0};
float[] p118 = {240.0, 175.0, 0.0, 1.0};
float[] p119 = {250.0, 155.0, 0.0, 1.0};

/* FRONT */
float[] p120 = {150.0, 155.0, 2.5, 1.0};
float[] p121 = {160.0, 175.0, 2.5, 1.0};
float[] p122 = {170.0, 155.0, 2.5, 1.0};
float[] p123 = {180.0, 175.0, 2.5, 1.0};
float[] p124 = {190.0, 155.0, 2.5, 1.0};
float[] p125 = {200.0, 175.0, 2.5, 1.0};
float[] p126 = {210.0, 155.0, 2.5, 1.0};
float[] p127 = {220.0, 175.0, 2.5, 1.0};
float[] p128 = {230.0, 155.0, 2.5, 1.0};
float[] p129 = {240.0, 175.0, 2.5, 1.0};
float[] p130 = {250.0, 155.0, 2.5, 1.0};


/* Diamond shape points */
/* BACK */
float[] p131 = {475.0, 175.0, 0.0, 1.0};
float[] p132 = {485.0, 165.0, 0.0, 1.0};
float[] p133 = {505.0, 165.0, 0.0, 1.0};
float[] p134 = {515.0, 175.0, 0.0, 1.0};
float[] p135 = {495.0, 200.0, 0.0, 1.0};

/* FRONT */
float[] p136 = {475.0, 175.0, 8.0, 1.0};
float[] p137 = {485.0, 165.0, 8.0, 1.0};
float[] p138 = {505.0, 165.0, 8.0, 1.0};
float[] p139 = {515.0, 175.0, 8.0, 1.0};
float[] p140 = {495.0, 200.0, 8.0, 1.0};


/* Simple Tile shape points */
/* BACK */
float[] p141 = {450.0, 215.0, 0.0, 1.0};
float[] p142 = {550.0, 215.0, 0.0, 1.0};
float[] p143 = {550.0, 225.0, 0.0, 1.0};
float[] p144 = {450.0, 225.0, 0.0, 1.0};

/* FRONT */
float[] p145 = {450.0, 215.0, 6.0, 1.0};
float[] p146 = {550.0, 215.0, 6.0, 1.0};
float[] p147 = {550.0, 225.0, 6.0, 1.0};
float[] p148 = {450.0, 225.0, 6.0, 1.0};



/* Platform Ground shape points */
/* BACK */
float[] p149 = {0.0,   245.0,   -20.0, 1.0};
float[] p150 = {700.0, 245.0,   -20.0, 1.0};
float[] p151 = {700.0, 300.0,   -20.0, 1.0};
float[] p152 = {0.0,   300.0,   -20.0, 1.0};


/* FRONT */
float[] p153 = {0.0,   245.0, 0.0, 1.0};
float[] p154 = {700.0, 245.0, 0.0, 1.0};
float[] p155 = {700.0, 300.0, 0.0, 1.0};
float[] p156 = {0.0,   300.0, 0.0, 1.0};


/* Building2 shape Points */
/* BACK */
float[] p157 = {105.0,   75.0,  -85.0, 1.0};
float[] p158 = {200.0,   50.0,  -85.0, 1.0};
float[] p159 = {300.0,   75.0,  -85.0, 1.0};
float[] p160 = {300.0,   125.0, -85.0, 1.0};
float[] p161 = {105.0,   125.0, -85.0, 1.0};


/* FRONT */
float[] p162 = {105.0,   75.0,  -75.0, 1.0};
float[] p163 = {200.0,   50.0,  -75.0, 1.0};
float[] p164 = {300.0,   75.0,  -75.0, 1.0};
float[] p165 = {300.0,   125.0, -75.0, 1.0};
float[] p166 = {105.0,   125.0, -75.0, 1.0};

/* Double Tower */
/* BACK */
float[] p167 = {300.0,   50.0,   -95.0, 1.0};
float[] p168 = {325.0,   25.0,   -95.0, 1.0};
float[] p169 = {350.0,   50.0,   -95.0, 1.0};
float[] p170 = {350.0,   75.0,   -95.0, 1.0};
float[] p171 = {450.0,   75.0,   -95.0, 1.0};
float[] p172 = {450.0,   50.0,   -95.0, 1.0};
float[] p173 = {475.0,   25.0,   -95.0, 1.0};
float[] p174 = {500.0,   50.0,   -95.0, 1.0};
float[] p175 = {500.0,   125.0,  -95.0, 1.0};
float[] p176 = {450.0,   125.0,  -95.0, 1.0};
float[] p177 = {450.0,   85.0,   -95.0, 1.0};
float[] p178 = {350.0,   85.0,   -95.0, 1.0};
float[] p179 = {350.0,   125.0,  -95.0, 1.0};
float[] p180 = {300.0,   125.0,  -95.0, 1.0};
/* FRONT */
float[] p181 = {300.0,   50.0,   -65.0, 1.0};
float[] p182 = {325.0,   25.0,   -65.0, 1.0};
float[] p183 = {350.0,   50.0,   -65.0, 1.0};
float[] p184 = {350.0,   75.0,   -65.0, 1.0};
float[] p185 = {450.0,   75.0,   -65.0, 1.0};
float[] p186 = {450.0,   50.0,   -65.0, 1.0};
float[] p187 = {475.0,   25.0,   -65.0, 1.0};
float[] p188 = {500.0,   50.0,   -65.0, 1.0};
float[] p189 = {500.0,   125.0,  -65.0, 1.0};
float[] p190 = {450.0,   125.0,  -65.0, 1.0};
float[] p191 = {450.0,   85.0,   -65.0, 1.0};
float[] p192 = {350.0,   85.0,   -65.0, 1.0};
float[] p193 = {350.0,   125.0,  -65.0, 1.0};
float[] p194 = {300.0,   125.0,  -65.0, 1.0};


/* Building1's Windows */
/* Window 1 BACK */
float[] p195 = {55.0,    55.0,    -55.0, 1.0};
float[] p196 = {60.0,    55.0,    -55.0, 1.0};
float[] p197 = {60.0,    75.0,    -55.0, 1.0};
float[] p198 = {55.0,    75.0,    -55.0, 1.0};
/* Window 1 FRONT */
float[] p199 = {55.0,    55.0,    -51.0, 1.0};
float[] p200 = {60.0,    55.0,    -51.0, 1.0};
float[] p201 = {60.0,    75.0,    -51.0, 1.0};
float[] p202 = {55.0,    75.0,    -51.0, 1.0};

/* Window 2 BACK */
float[] p203 = {70.0,    55.0,    -55.0, 1.0};
float[] p204 = {75.0,    55.0,    -55.0, 1.0};
float[] p205 = {75.0,    75.0,    -55.0, 1.0};
float[] p206 = {70.0,    75.0,    -55.0, 1.0};
/* Window 2 FRONT */
float[] p207 = {70.0,    55.0,    -51.0, 1.0};
float[] p208 = {75.0,    55.0,    -51.0, 1.0};
float[] p209 = {75.0,    75.0,    -51.0, 1.0};
float[] p210 = {70.0,    75.0,    -51.0, 1.0};

/* Window 3 BACK */
float[] p211 = {85.0,    55.0,    -55.0, 1.0};
float[] p212 = {90.0,    55.0,    -55.0, 1.0};
float[] p213 = {90.0,    75.0,    -55.0, 1.0};
float[] p214 = {85.0,    75.0,    -55.0, 1.0};
/* Window 3 FRONT */
float[] p215 = {85.0,    55.0,    -51.0, 1.0};
float[] p216 = {90.0,    55.0,    -51.0, 1.0};
float[] p217 = {90.0,    75.0,    -51.0, 1.0};
float[] p218 = {85.0,    75.0,    -51.0, 1.0};

/* Window 4 BACK */
float[] p219 = {65.0,    95.0,    -55.0, 1.0};
float[] p220 = {85.0,    95.0,    -55.0, 1.0};
float[] p221 = {85.0,    110.0,   -55.0, 1.0};
float[] p222 = {65.0,    110.0,   -55.0, 1.0};
/* Window 4 FRONT */
float[] p223 = {65.0,    95.0,    -47.0, 1.0};
float[] p224 = {85.0,    95.0,    -47.0, 1.0};
float[] p225 = {85.0,    110.0,   -47.0, 1.0};
float[] p226 = {65.0,    110.0,   -47.0, 1.0};





/******* FUNCTIONS   ********/


void building1() 
{
  /* BACK */
  line(p1[0],p1[1],p1[2], p2[0],p2[1],p2[2]);   
  line(p2[0],p2[1],p2[2], p3[0],p3[1],p3[2]);   
  line(p3[0],p3[1],p3[2], p4[0],p4[1],p4[2]);   
  line(p4[0],p4[1],p4[2], p5[0],p5[1],p5[2]);   
  line(p5[0],p5[1],p5[2], p6[0],p6[1],p6[2]);   
  line(p6[0],p6[1],p6[2], p7[0],p7[1],p7[2]);    
  line(p7[0],p7[1],p7[2], p8[0],p8[1],p8[2]);   
  line(p8[0],p8[1],p8[2], p9[0],p9[1],p9[2]);   
  line(p9[0],p9[1],p9[2], p10[0],p10[1],p10[2]);
  line(p10[0],p10[1],p10[2], p11[0],p11[1],p11[2]);
  line(p11[0],p11[1],p11[2], p12[0],p12[1],p12[2]);
  line(p12[0],p12[1],p12[2], p13[0],p13[1],p13[2]);
  line(p13[0],p13[1],p13[2], p14[0],p14[1],p14[2]);
  line(p14[0],p14[1],p14[2], p15[0],p15[1],p15[2]);
  line(p15[0],p15[1],p15[2], p16[0],p16[1],p16[2]);
  line(p16[0],p16[1],p16[2], p17[0],p17[1],p17[2]);
  line(p17[0],p17[1],p17[2], p18[0],p18[1],p18[2]);
  line(p18[0],p18[1],p18[2], p1[0],p1[1],p1[2]);
  
  /* FRONT */
  line(p19[0],p19[1],p19[2], p20[0],p20[1],p20[2]);
  line(p20[0],p20[1],p20[2], p21[0],p21[1],p21[2]);
  line(p21[0],p21[1],p21[2], p22[0],p22[1],p22[2]);
  line(p22[0],p22[1],p22[2], p23[0],p23[1],p23[2]);
  line(p23[0],p23[1],p23[2], p24[0],p24[1],p24[2]);
  line(p24[0],p24[1],p24[2], p25[0],p25[1],p25[2]);
  line(p25[0],p25[1],p25[2], p26[0],p26[1],p26[2]);
  line(p26[0],p26[1],p26[2], p27[0],p27[1],p27[2]);
  line(p27[0],p27[1],p27[2], p28[0],p28[1],p28[2]);
  line(p28[0],p28[1],p28[2], p29[0],p29[1],p29[2]);
  line(p29[0],p29[1],p29[2], p30[0],p30[1],p30[2]);
  line(p30[0],p30[1],p30[2], p31[0],p31[1],p31[2]);
  line(p31[0],p31[1],p31[2], p32[0],p32[1],p32[2]);
  line(p32[0],p32[1],p32[2], p33[0],p33[1],p33[2]);
  line(p33[0],p33[1],p33[2], p34[0],p34[1],p34[2]);
  line(p34[0],p34[1],p34[2], p35[0],p35[1],p35[2]);
  line(p35[0],p35[1],p35[2], p36[0],p36[1],p36[2]);
  line(p36[0],p36[1],p36[2], p19[0],p19[1],p19[2]);
  
  /* Connection BACK & FRONT */
  line(p1[0],p1[1],p1[2], p19[0],p19[1],p19[2]);   
  line(p2[0],p2[1],p2[2], p20[0],p20[1],p20[2]);   
  line(p3[0],p3[1],p3[2], p21[0],p21[1],p21[2]);   
  line(p4[0],p4[1],p4[2], p22[0],p22[1],p22[2]);   
  line(p5[0],p5[1],p5[2], p23[0],p23[1],p23[2]);   
  line(p6[0],p6[1],p6[2], p24[0],p24[1],p24[2]);    
  line(p7[0],p7[1],p7[2], p25[0],p25[1],p25[2]);   
  line(p8[0],p8[1],p8[2], p26[0],p26[1],p26[2]);   
  line(p9[0],p9[1],p9[2], p27[0],p27[1],p27[2]);
  line(p10[0],p10[1],p10[2], p28[0],p28[1],p28[2]);
  line(p11[0],p11[1],p11[2], p29[0],p29[1],p29[2]);
  line(p12[0],p12[1],p12[2], p30[0],p30[1],p30[2]);
  line(p13[0],p13[1],p13[2], p31[0],p31[1],p31[2]);
  line(p14[0],p14[1],p14[2], p32[0],p32[1],p32[2]);
  line(p15[0],p15[1],p15[2], p33[0],p33[1],p33[2]);
  line(p16[0],p16[1],p16[2], p34[0],p34[1],p34[2]);
  line(p17[0],p17[1],p17[2], p35[0],p35[1],p35[2]);
  line(p18[0],p18[1],p18[2], p36[0],p36[1],p36[2]);
  
  
  
  
}  


void character()
{
  /* BACK */
  line(p37[0],p37[1],p37[2], p38[0],p38[1],p38[2]);
  line(p38[0],p38[1],p38[2], p39[0],p39[1],p39[2]);
  line(p39[0],p39[1],p39[2], p40[0],p40[1],p40[2]);
  line(p40[0],p40[1],p40[2], p41[0],p41[1],p41[2]);
  line(p41[0],p41[1],p41[2], p42[0],p42[1],p42[2]);
  line(p42[0],p42[1],p42[2], p43[0],p43[1],p43[2]);
  line(p43[0],p43[1],p43[2], p44[0],p44[1],p44[2]);
  line(p44[0],p44[1],p44[2], p45[0],p45[1],p45[2]);
  line(p45[0],p45[1],p45[2], p46[0],p46[1],p46[2]);
  line(p46[0],p46[1],p46[2], p47[0],p47[1],p47[2]);
  line(p47[0],p47[1],p47[2], p48[0],p48[1],p48[2]);
  line(p48[0],p48[1],p48[2], p49[0],p49[1],p49[2]);
  line(p49[0],p49[1],p49[2], p50[0],p50[1],p50[2]);
  line(p50[0],p50[1],p50[2], p51[0],p51[1],p51[2]);
  line(p51[0],p51[1],p51[2], p52[0],p52[1],p52[2]);
  line(p52[0],p52[1],p52[2], p37[0],p37[1],p37[2]);
  
  /* FRONT */
  line(p53[0],p53[1],p53[2], p54[0],p54[1],p54[2]);
  line(p54[0],p54[1],p54[2], p55[0],p55[1],p55[2]);
  line(p55[0],p55[1],p55[2], p56[0],p56[1],p56[2]);
  line(p56[0],p56[1],p56[2], p57[0],p57[1],p57[2]);
  line(p57[0],p57[1],p57[2], p58[0],p58[1],p58[2]);
  line(p58[0],p58[1],p58[2], p59[0],p59[1],p59[2]);
  line(p59[0],p59[1],p59[2], p60[0],p60[1],p60[2]);
  line(p60[0],p60[1],p60[2], p61[0],p61[1],p61[2]);
  line(p61[0],p61[1],p61[2], p62[0],p62[1],p62[2]);
  line(p62[0],p62[1],p62[2], p63[0],p63[1],p63[2]);
  line(p63[0],p63[1],p63[2], p64[0],p64[1],p64[2]);
  line(p64[0],p64[1],p64[2], p65[0],p65[1],p65[2]);
  line(p65[0],p65[1],p65[2], p66[0],p66[1],p66[2]);
  line(p66[0],p66[1],p66[2], p67[0],p67[1],p67[2]);
  line(p67[0],p67[1],p67[2], p68[0],p68[1],p68[2]);
  line(p68[0],p68[1],p68[2], p53[0],p53[1],p53[2]);
  
  
  /* Connecting BACK & FRONT */
  line(p37[0],p37[1],p37[2], p53[0],p53[1],p53[2]);
  line(p38[0],p38[1],p38[2], p54[0],p54[1],p54[2]);
  line(p39[0],p39[1],p39[2], p55[0],p55[1],p55[2]);
  line(p40[0],p40[1],p40[2], p56[0],p56[1],p56[2]);
  line(p41[0],p41[1],p41[2], p57[0],p57[1],p57[2]);
  line(p42[0],p42[1],p42[2], p58[0],p58[1],p58[2]);
  line(p43[0],p43[1],p43[2], p59[0],p59[1],p59[2]);
  line(p44[0],p44[1],p44[2], p60[0],p60[1],p60[2]);
  line(p45[0],p45[1],p45[2], p61[0],p61[1],p61[2]);
  line(p46[0],p46[1],p46[2], p62[0],p62[1],p62[2]);
  line(p47[0],p47[1],p47[2], p63[0],p63[1],p63[2]);
  line(p48[0],p48[1],p48[2], p64[0],p64[1],p64[2]);
  line(p49[0],p49[1],p49[2], p65[0],p65[1],p65[2]);
  line(p50[0],p50[1],p50[2], p66[0],p66[1],p66[2]);
  line(p51[0],p51[1],p51[2], p67[0],p67[1],p67[2]);
  line(p52[0],p52[1],p52[2], p68[0],p68[1],p68[2]); 
  
}



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
  /* BACK */
  line(p93[0],p93[1],p93[2], p94[0],p94[1],p94[2]);
  line(p94[0],p94[1],p94[2], p95[0],p95[1],p95[2]);
  line(p95[0],p95[1],p95[2], p96[0],p96[1],p96[2]);
  line(p96[0],p96[1],p96[2], p93[0],p93[1],p93[2]);
  
  /* FRONT */
  line(p97[0],p97[1],p97[2], p98[0],p98[1],p98[2]);
  line(p98[0],p98[1],p98[2], p99[0],p99[1],p99[2]);
  line(p99[0],p99[1],p99[2], p100[0],p100[1],p100[2]);
  line(p100[0],p100[1],p100[2], p97[0],p97[1],p97[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p93[0],p93[1],p93[2], p97[0],p97[1],p97[2]);
  line(p94[0],p94[1],p94[2], p98[0],p98[1],p98[2]);
  line(p95[0],p95[1],p95[2], p99[0],p99[1],p99[2]);
  line(p96[0],p96[1],p96[2], p100[0],p100[1],p100[2]);
  
}

/* Method for creating spikes shape */ 
void spikes()
{
  /* BACK */
  line(p109[0],p109[1],p109[2], p110[0],p110[1],p110[2]);
  line(p110[0],p110[1],p110[2], p111[0],p111[1],p111[2]);
  line(p111[0],p111[1],p111[2], p112[0],p112[1],p112[2]);
  line(p112[0],p112[1],p112[2], p113[0],p113[1],p113[2]);
  line(p113[0],p113[1],p113[2], p114[0],p114[1],p114[2]);
  line(p114[0],p114[1],p114[2], p115[0],p115[1],p115[2]);
  line(p115[0],p115[1],p115[2], p116[0],p116[1],p116[2]);
  line(p116[0],p116[1],p116[2], p117[0],p117[1],p117[2]);
  line(p117[0],p117[1],p117[2], p118[0],p118[1],p118[2]);
  line(p118[0],p118[1],p118[2], p119[0],p119[1],p119[2]);
  line(p119[0],p119[1],p119[2], p109[0],p109[1],p109[2]);
  
  /* FRONT */
  line(p120[0],p120[1],p120[2], p121[0],p121[1],p121[2]);
  line(p121[0],p121[1],p121[2], p122[0],p122[1],p122[2]);
  line(p122[0],p122[1],p122[2], p123[0],p123[1],p123[2]);
  line(p123[0],p123[1],p123[2], p124[0],p124[1],p124[2]);
  line(p124[0],p124[1],p124[2], p125[0],p125[1],p125[2]);
  line(p125[0],p125[1],p125[2], p126[0],p126[1],p126[2]);
  line(p126[0],p126[1],p126[2], p127[0],p127[1],p127[2]);
  line(p127[0],p127[1],p127[2], p128[0],p128[1],p128[2]);
  line(p128[0],p128[1],p128[2], p129[0],p129[1],p129[2]);
  line(p129[0],p129[1],p129[2], p130[0],p130[1],p130[2]);
  line(p130[0],p130[1],p130[2], p120[0],p120[1],p120[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p109[0],p109[1],p109[2], p120[0],p120[1],p120[2]);
  line(p110[0],p110[1],p110[2], p121[0],p121[1],p121[2]);
  line(p111[0],p111[1],p111[2], p122[0],p122[1],p122[2]);
  line(p112[0],p112[1],p112[2], p123[0],p123[1],p123[2]);
  line(p113[0],p113[1],p113[2], p124[0],p124[1],p124[2]);
  line(p114[0],p114[1],p114[2], p125[0],p125[1],p125[2]);
  line(p115[0],p115[1],p115[2], p126[0],p126[1],p126[2]);
  line(p116[0],p116[1],p116[2], p127[0],p127[1],p127[2]);
  line(p117[0],p117[1],p117[2], p128[0],p128[1],p128[2]);
  line(p118[0],p118[1],p118[2], p129[0],p129[1],p129[2]);
  line(p119[0],p119[1],p119[2], p130[0],p130[1],p130[2]);
}


/* Method for creating Diamond shape */
void diamond()
{
  /* BACK */
  line(p131[0],p131[1],p131[2], p132[0],p132[1],p132[2]);
  line(p132[0],p132[1],p132[2], p133[0],p133[1],p133[2]);
  line(p133[0],p133[1],p133[2], p134[0],p134[1],p134[2]);
  line(p134[0],p134[1],p134[2], p135[0],p135[1],p135[2]);
  line(p135[0],p135[1],p135[2], p131[0],p131[1],p131[2]);
  
  
  /* FRONT */
  line(p136[0],p136[1],p136[2], p137[0],p137[1],p137[2]);
  line(p137[0],p137[1],p137[2], p138[0],p138[1],p138[2]);
  line(p138[0],p138[1],p138[2], p139[0],p139[1],p139[2]);
  line(p139[0],p139[1],p139[2], p140[0],p140[1],p140[2]);
  line(p140[0],p140[1],p140[2], p136[0],p136[1],p136[2]);
  
  
  /* CONNECTING FRONT & BACK */
  line(p131[0],p131[1],p131[2], p136[0],p136[1],p136[2]);
  line(p132[0],p132[1],p132[2], p137[0],p137[1],p137[2]);
  line(p133[0],p133[1],p133[2], p138[0],p138[1],p138[2]);
  line(p134[0],p134[1],p134[2], p139[0],p139[1],p139[2]);
  line(p135[0],p135[1],p135[2], p140[0],p140[1],p140[2]);
  
}

void simpleTile()
{
  
  /* BACK */
  line(p141[0],p141[1],p141[2], p142[0],p142[1],p142[2]);
  line(p142[0],p142[1],p142[2], p143[0],p143[1],p143[2]);
  line(p143[0],p143[1],p143[2], p144[0],p144[1],p144[2]);
  line(p144[0],p144[1],p144[2], p141[0],p141[1],p141[2]);
  
  /* FRONT */
  line(p145[0],p145[1],p145[2], p146[0],p146[1],p146[2]);
  line(p146[0],p146[1],p146[2], p147[0],p147[1],p147[2]);
  line(p147[0],p147[1],p147[2], p148[0],p148[1],p148[2]);
  line(p148[0],p148[1],p148[2], p145[0],p145[1],p145[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p141[0],p141[1],p141[2], p145[0],p145[1],p145[2]);
  line(p142[0],p142[1],p142[2], p146[0],p146[1],p146[2]);
  line(p143[0],p143[1],p143[2], p147[0],p147[1],p147[2]);
  line(p144[0],p144[1],p144[2], p148[0],p148[1],p148[2]);
}

void platformGround()
{
  /* BACK */
  line(p149[0],p149[1],p149[2], p150[0],p150[1],p150[2]);
  line(p150[0],p150[1],p150[2], p151[0],p151[1],p151[2]);
  line(p151[0],p151[1],p151[2], p152[0],p152[1],p152[2]);
  line(p152[0],p152[1],p152[2], p149[0],p149[1],p149[2]);
  
  /* FRONT */
  line(p153[0],p153[1],p153[2], p154[0],p154[1],p154[2]);
  line(p154[0],p154[1],p154[2], p155[0],p155[1],p155[2]);
  line(p155[0],p155[1],p155[2], p156[0],p156[1],p156[2]);
  line(p156[0],p156[1],p156[2], p153[0],p153[1],p153[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p149[0],p149[1],p149[2], p153[0],p153[1],p153[2]);
  line(p150[0],p150[1],p150[2], p154[0],p154[1],p154[2]);
  line(p151[0],p151[1],p151[2], p155[0],p155[1],p155[2]);
  line(p152[0],p152[1],p152[2], p156[0],p156[1],p156[2]);
  
}


void building2()
{
  /* BACK */
  line(p157[0],p157[1],p157[2], p158[0],p158[1],p158[2]);
  line(p158[0],p158[1],p158[2], p159[0],p159[1],p159[2]);
  line(p159[0],p159[1],p159[2], p160[0],p160[1],p160[2]);
  line(p160[0],p160[1],p160[2], p161[0],p161[1],p161[2]);
  line(p161[0],p161[1],p161[2], p157[0],p157[1],p157[2]);
  
  /* FRONT */
  line(p162[0],p162[1],p162[2], p163[0],p163[1],p163[2]);
  line(p163[0],p163[1],p163[2], p164[0],p164[1],p164[2]);
  line(p164[0],p164[1],p164[2], p165[0],p165[1],p165[2]);
  line(p165[0],p165[1],p165[2], p166[0],p166[1],p166[2]);
  line(p166[0],p166[1],p166[2], p162[0],p162[1],p162[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p157[0],p157[1],p157[2], p162[0],p162[1],p162[2]);
  line(p158[0],p158[1],p158[2], p163[0],p163[1],p163[2]);
  line(p159[0],p159[1],p159[2], p164[0],p164[1],p164[2]);
  line(p160[0],p160[1],p160[2], p165[0],p165[1],p165[2]);
  line(p161[0],p161[1],p161[2], p166[0],p166[1],p166[2]);
  
  
}

void doubleTower()
{
  /* BACK */
  line(p167[0],p167[1],p167[2], p168[0],p168[1],p168[2]);
  line(p168[0],p168[1],p168[2], p169[0],p169[1],p169[2]);
  line(p169[0],p169[1],p169[2], p170[0],p170[1],p170[2]);
  line(p170[0],p170[1],p170[2], p171[0],p171[1],p171[2]);
  line(p171[0],p171[1],p171[2], p172[0],p172[1],p172[2]);
  line(p172[0],p172[1],p172[2], p173[0],p173[1],p173[2]);
  line(p173[0],p173[1],p173[2], p174[0],p174[1],p174[2]);
  line(p174[0],p174[1],p174[2], p175[0],p175[1],p175[2]);
  line(p175[0],p175[1],p175[2], p176[0],p176[1],p176[2]);
  line(p176[0],p176[1],p176[2], p177[0],p177[1],p177[2]);
  line(p177[0],p177[1],p177[2], p178[0],p178[1],p178[2]);
  line(p178[0],p178[1],p178[2], p179[0],p179[1],p179[2]);
  line(p179[0],p179[1],p179[2], p180[0],p180[1],p180[2]);
  line(p180[0],p180[1],p180[2], p167[0],p167[1],p167[2]);
  
  
  /* FRONT */
  line(p181[0],p181[1],p181[2], p182[0],p182[1],p182[2]);
  line(p182[0],p182[1],p182[2], p183[0],p183[1],p183[2]);
  line(p183[0],p183[1],p183[2], p184[0],p184[1],p184[2]);
  line(p184[0],p184[1],p184[2], p185[0],p185[1],p185[2]);
  line(p185[0],p185[1],p185[2], p186[0],p186[1],p186[2]);
  line(p186[0],p186[1],p186[2], p187[0],p187[1],p187[2]);
  line(p187[0],p187[1],p187[2], p188[0],p188[1],p188[2]);
  line(p188[0],p188[1],p188[2], p189[0],p189[1],p189[2]);
  line(p189[0],p189[1],p189[2], p190[0],p190[1],p190[2]);
  line(p190[0],p190[1],p190[2], p191[0],p191[1],p191[2]);
  line(p191[0],p191[1],p191[2], p192[0],p192[1],p192[2]);
  line(p192[0],p192[1],p192[2], p193[0],p193[1],p193[2]);
  line(p193[0],p193[1],p193[2], p194[0],p194[1],p194[2]);
  line(p194[0],p194[1],p194[2], p181[0],p181[1],p181[2]);
  
  
  
  /* CONNECTING FRONT & BACK */
  line(p167[0],p167[1],p167[2], p181[0],p181[1],p181[2]);
  line(p168[0],p168[1],p168[2], p182[0],p182[1],p182[2]);
  line(p169[0],p169[1],p169[2], p183[0],p183[1],p183[2]);
  line(p170[0],p170[1],p170[2], p184[0],p184[1],p184[2]);
  line(p171[0],p171[1],p171[2], p185[0],p185[1],p185[2]);
  line(p172[0],p172[1],p172[2], p186[0],p186[1],p186[2]);
  line(p173[0],p173[1],p173[2], p187[0],p187[1],p187[2]);
  line(p174[0],p174[1],p174[2], p188[0],p188[1],p188[2]);
  line(p175[0],p175[1],p175[2], p189[0],p189[1],p189[2]);
  line(p176[0],p176[1],p176[2], p190[0],p190[1],p190[2]);
  line(p177[0],p177[1],p177[2], p191[0],p191[1],p191[2]);
  line(p178[0],p178[1],p178[2], p192[0],p192[1],p192[2]);
  line(p179[0],p179[1],p179[2], p193[0],p193[1],p193[2]);
  line(p180[0],p180[1],p180[2], p194[0],p194[1],p194[2]);
  
}


void window1()
{
  /* BACK */
  line(p195[0],p195[1],p195[2], p196[0],p196[1],p196[2]);
  line(p196[0],p196[1],p196[2], p197[0],p197[1],p197[2]);
  line(p197[0],p197[1],p197[2], p198[0],p198[1],p198[2]);
  line(p198[0],p198[1],p198[2], p195[0],p195[1],p195[2]);
  
  
  /* FRONT */
  line(p199[0],p199[1],p199[2], p200[0],p200[1],p200[2]);
  line(p200[0],p200[1],p200[2], p201[0],p201[1],p201[2]);
  line(p201[0],p201[1],p201[2], p202[0],p202[1],p202[2]);
  line(p202[0],p202[1],p202[2], p199[0],p199[1],p199[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p195[0],p195[1],p195[2], p199[0],p199[1],p199[2]);
  line(p196[0],p196[1],p196[2], p200[0],p200[1],p200[2]);
  line(p197[0],p197[1],p197[2], p201[0],p201[1],p201[2]);
  line(p198[0],p198[1],p198[2], p202[0],p202[1],p202[2]);
}

void window2()
{
  /* BACK */
  line(p203[0],p203[1],p203[2], p204[0],p204[1],p204[2]);
  line(p204[0],p204[1],p204[2], p205[0],p205[1],p205[2]);
  line(p205[0],p205[1],p205[2], p206[0],p206[1],p206[2]);
  line(p206[0],p206[1],p206[2], p203[0],p203[1],p203[2]);
  
  
  /* FRONT */
  line(p207[0],p207[1],p207[2], p208[0],p208[1],p208[2]);
  line(p208[0],p208[1],p208[2], p209[0],p209[1],p209[2]);
  line(p209[0],p209[1],p209[2], p210[0],p210[1],p210[2]);
  line(p210[0],p210[1],p210[2], p207[0],p207[1],p207[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p203[0],p203[1],p203[2], p207[0],p207[1],p207[2]);
  line(p204[0],p204[1],p204[2], p208[0],p208[1],p208[2]);
  line(p205[0],p205[1],p205[2], p209[0],p209[1],p209[2]);
  line(p206[0],p206[1],p206[2], p210[0],p210[1],p210[2]);  
  
}

void window3()
{
  /* BACK */
  line(p211[0],p211[1],p211[2], p212[0],p212[1],p212[2]);
  line(p212[0],p212[1],p212[2], p213[0],p213[1],p213[2]);
  line(p213[0],p213[1],p213[2], p214[0],p214[1],p214[2]);
  line(p214[0],p214[1],p214[2], p211[0],p211[1],p211[2]);
  
  
  /* FRONT */
  line(p215[0],p215[1],p215[2], p216[0],p216[1],p216[2]);
  line(p216[0],p216[1],p216[2], p217[0],p217[1],p217[2]);
  line(p217[0],p217[1],p217[2], p218[0],p218[1],p218[2]);
  line(p218[0],p218[1],p218[2], p215[0],p215[1],p215[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p211[0],p211[1],p211[2], p215[0],p215[1],p215[2]);
  line(p212[0],p212[1],p212[2], p216[0],p216[1],p216[2]);
  line(p213[0],p213[1],p213[2], p217[0],p217[1],p217[2]);
  line(p214[0],p214[1],p214[2], p218[0],p218[1],p218[2]);
  
}

void window4()
{
  /* BACK */
  line(p219[0],p219[1],p219[2], p220[0],p220[1],p220[2]);
  line(p220[0],p220[1],p220[2], p221[0],p221[1],p221[2]);
  line(p221[0],p221[1],p221[2], p222[0],p222[1],p222[2]);
  line(p222[0],p222[1],p222[2], p219[0],p219[1],p219[2]);
  
  
  /* FRONT */
  line(p223[0],p223[1],p223[2], p224[0],p224[1],p224[2]);
  line(p224[0],p224[1],p224[2], p225[0],p225[1],p225[2]);
  line(p225[0],p225[1],p225[2], p226[0],p226[1],p226[2]);
  line(p226[0],p226[1],p226[2], p223[0],p223[1],p223[2]);
  
  /* CONNECTING FRONT & BACK */
  line(p219[0],p219[1],p219[2], p223[0],p223[1],p223[2]);
  line(p220[0],p220[1],p220[2], p224[0],p224[1],p224[2]);
  line(p221[0],p221[1],p221[2], p225[0],p225[1],p225[2]);
  line(p222[0],p222[1],p222[2], p226[0],p226[1],p226[2]);
}



void getTire1Centre()
{
  translateX = (p86[0] + p88[0]) / 2;
  
  translateY = (p85[1] + p87[1]) / 2;
  
  translateZ = (p85[2] + p89[2]) / 2;
  
  /* Updating centre point of shape */
  translateInMatrix[3][0] = -translateX;
  translateInMatrix[3][1] = -translateY;
  translateInMatrix[3][2] = -translateZ;
  
  translateOutMatrix[3][0] = translateX;
  translateOutMatrix[3][1] = translateY;
  translateOutMatrix[3][2] = translateZ; //<>//
  
}


void getTire2Centre()
{
  translateX = (p94[0] + p96[0]) / 2;
  
  translateY = (p93[1] + p95[1]) / 2;
  
  translateZ = (p93[2] + p97[2]) / 2;
  
  /* Updating centre point of shape */
  translateInMatrix[3][0] = -translateX;
  translateInMatrix[3][1] = -translateY;
  translateInMatrix[3][2] = -translateZ;
  
  translateOutMatrix[3][0] = translateX;
  translateOutMatrix[3][1] = translateY;
  translateOutMatrix[3][2] = translateZ;
  
}

void getDiamondCentre()
{
  /* Formula: centre value =  (min + max ) / 2 */ 
  
  translateX = (p131[0] + p134[0]) / 2;
  
  translateY = (p132[1] + p135[1]) / 2;
  
  translateZ = (p131[2] + p136[2]) / 2;
  
  /* Updating centre point of shape */
  translateInMatrix[3][0] = -translateX;
  translateInMatrix[3][1] = -translateY;
  translateInMatrix[3][2] = -translateZ;
  
  translateOutMatrix[3][0] = translateX;
  translateOutMatrix[3][1] = translateY;
  translateOutMatrix[3][2] = translateZ;
  
}



void applyTranslate()
{          
  /* Translate skateboard */
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
  
  
  
  /* Translate Tire 1 */
  /* BACK */
  p85 = transform_point(t_matrix, p85);
  p86 = transform_point(t_matrix, p86); //<>//
  p87 = transform_point(t_matrix, p87);
  p88 = transform_point(t_matrix, p88); //<>//
  
  /* FRONT */
  p89 = transform_point(t_matrix, p89);
  p90 = transform_point(t_matrix, p90);
  p91 = transform_point(t_matrix, p91);
  p92 = transform_point(t_matrix, p92);
  
  
  
  /* Translate Tire 2 */
  /* BACK */
  p93 = transform_point(t_matrix, p93);
  p94 = transform_point(t_matrix, p94);
  p95 = transform_point(t_matrix, p95);
  p96 = transform_point(t_matrix, p96);
  
  /* FRONT */
  p97 = transform_point(t_matrix, p97);
  p98 = transform_point(t_matrix, p98);
  p99 = transform_point(t_matrix, p99);
  p100 = transform_point(t_matrix, p100);
  
  translateRotateCounter++;
  
}


void inv_Translate()
{
  
  /* Translate back skateboard */
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
  
  
  
  /* Translate back Tire 1 */
  /* BACK */
  p85 = transform_point(inv_t_matrix, p85);
  p86 = transform_point(inv_t_matrix, p86);
  p87 = transform_point(inv_t_matrix, p87);
  p88 = transform_point(inv_t_matrix, p88);
  
  /* FRONT */
  p89 = transform_point(inv_t_matrix, p89);
  p90 = transform_point(inv_t_matrix, p90);
  p91 = transform_point(inv_t_matrix, p91);
  p92 = transform_point(inv_t_matrix, p92);
  
  /* Translate back Tire 2 */
  /* BACK */
  p93 = transform_point(inv_t_matrix, p93);
  p94 = transform_point(inv_t_matrix, p94);
  p95 = transform_point(inv_t_matrix, p95);
  p96 = transform_point(inv_t_matrix, p96);
  
  /* FRONT */
  p97 = transform_point(inv_t_matrix, p97);
  p98 = transform_point(inv_t_matrix, p98);
  p99 = transform_point(inv_t_matrix, p99);
  p100 = transform_point(inv_t_matrix, p100);
  
  
  
  translateRotateCounter++;
  
  if(translateRotateCounter > resetValue)
  {
    translateRotateCounter = 1;
    
  }
}

void applyRotation()
{
  getTire1Centre();
  
  /* Rotating Skateboard's TIRE 1 */
  /* Translating-In BACK */
  p85 = transform_point(translateInMatrix, p85);
  p86 = transform_point(translateInMatrix, p86);
  p87 = transform_point(translateInMatrix, p87);
  p88 = transform_point(translateInMatrix, p88);
  /* Translating-In FRONT */
  p89 = transform_point(translateInMatrix, p89);
  p90 = transform_point(translateInMatrix, p90);
  p91 = transform_point(translateInMatrix, p91);
  p92 = transform_point(translateInMatrix, p92);
  /* rotating BACK */
  p85 = transform_point(rotZMatrix, p85);
  p86 = transform_point(rotZMatrix, p86);
  p87 = transform_point(rotZMatrix, p87);
  p88 = transform_point(rotZMatrix, p88);
  /* rotating FRONT */
  p89 = transform_point(rotZMatrix, p89);
  p90 = transform_point(rotZMatrix, p90);
  p91 = transform_point(rotZMatrix, p91);
  p92 = transform_point(rotZMatrix, p92);
  
  /* Translating-Out BACK */
  p85 = transform_point(translateOutMatrix, p85);
  p86 = transform_point(translateOutMatrix, p86);
  p87 = transform_point(translateOutMatrix, p87);
  p88 = transform_point(translateOutMatrix, p88);
  /* Translating-Out FRONT */
  p89 = transform_point(translateOutMatrix, p89);
  p90 = transform_point(translateOutMatrix, p90);
  p91 = transform_point(translateOutMatrix, p91);
  p92 = transform_point(translateOutMatrix, p92);
  
  /**** Rotation of Tire 1 ended *******/
  
  
    getTire2Centre();
  
  /* Rotating Skateboard's TIRE 2 */
  /* Translating-In BACK */
  p93 = transform_point(translateInMatrix, p93);
  p94 = transform_point(translateInMatrix, p94);
  p95 = transform_point(translateInMatrix, p95);
  p96 = transform_point(translateInMatrix, p96);
  /* Translating-In FRONT */
  p97 = transform_point(translateInMatrix, p97);
  p98 = transform_point(translateInMatrix, p98);
  p99 = transform_point(translateInMatrix, p99);
  p100 = transform_point(translateInMatrix, p100);
  /* rotating BACK */
  p93 = transform_point(rotZMatrix, p93);
  p94 = transform_point(rotZMatrix, p94);
  p95 = transform_point(rotZMatrix, p95);
  p96 = transform_point(rotZMatrix, p96);
  /* rotating FRONT */
  p97 = transform_point(rotZMatrix, p97);
  p98 = transform_point(rotZMatrix, p98);
  p99 = transform_point(rotZMatrix, p99);
  p100 = transform_point(rotZMatrix, p100);
  
  /* Translating-Out BACK */
  p93 = transform_point(translateOutMatrix, p93);
  p94 = transform_point(translateOutMatrix, p94);
  p95 = transform_point(translateOutMatrix, p95);
  p96 = transform_point(translateOutMatrix, p96);
  /* Translating-Out FRONT */
  p97 = transform_point(translateOutMatrix, p97);
  p98 = transform_point(translateOutMatrix, p98);
  p99 = transform_point(translateOutMatrix, p99);
  p100 = transform_point(translateOutMatrix, p100);
  
  /**** Rotation of Tire 2 ended *******/  
}

void rotateDiamond()
{
  
    getDiamondCentre();
  
  /* Rotating Diamond */
  /* Translating-In BACK */
  p131 = transform_point(translateInMatrix, p131);
  p132 = transform_point(translateInMatrix, p132);
  p133 = transform_point(translateInMatrix, p133);
  p134 = transform_point(translateInMatrix, p134);
  p135 = transform_point(translateInMatrix, p135);
  /* Translating-In FRONT */
  p136 = transform_point(translateInMatrix, p136);
  p137 = transform_point(translateInMatrix, p137);
  p138 = transform_point(translateInMatrix, p138);
  p139 = transform_point(translateInMatrix, p139);
  p140 = transform_point(translateInMatrix, p140);
  /* rotating BACK */
  p131 = transform_point(rotZMatrix, p131);
  p132 = transform_point(rotZMatrix, p132);
  p133 = transform_point(rotZMatrix, p133);
  p134 = transform_point(rotZMatrix, p134);
  p135 = transform_point(rotZMatrix, p135);
  /* rotating FRONT */
  p136 = transform_point(rotZMatrix, p136);
  p137 = transform_point(rotZMatrix, p137);
  p138 = transform_point(rotZMatrix, p138);
  p139 = transform_point(rotZMatrix, p139);
  p140 = transform_point(rotZMatrix, p140);
  
  /* Translating-Out BACK */
  p131 = transform_point(translateOutMatrix, p131);
  p132 = transform_point(translateOutMatrix, p132);
  p133 = transform_point(translateOutMatrix, p133);
  p134 = transform_point(translateOutMatrix, p134);
  p135 = transform_point(translateOutMatrix, p135);
  /* Translating-Out FRONT */
  p136 = transform_point(translateOutMatrix, p136);
  p137 = transform_point(translateOutMatrix, p137);
  p138 = transform_point(translateOutMatrix, p138);
  p139 = transform_point(translateOutMatrix, p139);
  p140 = transform_point(translateOutMatrix, p140);
  
  /**** Rotation of Diamond ended *******/
  
  
}


void flipRotation()
{
  //inv_rotZMatrix
  
  getTire1Centre();
  
  /* Rotating Skateboard's TIRE 1 */
  /* Translating-In BACK */
  p85 = transform_point(translateInMatrix, p85);
  p86 = transform_point(translateInMatrix, p86);
  p87 = transform_point(translateInMatrix, p87);
  p88 = transform_point(translateInMatrix, p88);
  /* Translating-In FRONT */
  p89 = transform_point(translateInMatrix, p89);
  p90 = transform_point(translateInMatrix, p90);
  p91 = transform_point(translateInMatrix, p91);
  p92 = transform_point(translateInMatrix, p92);
  /* rotating BACK */
  p85 = transform_point(inv_rotZMatrix, p85);
  p86 = transform_point(inv_rotZMatrix, p86);
  p87 = transform_point(inv_rotZMatrix, p87);
  p88 = transform_point(inv_rotZMatrix, p88);
  /* rotating FRONT */
  p89 = transform_point(inv_rotZMatrix, p89);
  p90 = transform_point(inv_rotZMatrix, p90);
  p91 = transform_point(inv_rotZMatrix, p91);
  p92 = transform_point(inv_rotZMatrix, p92);
  
  /* Translating-Out BACK */
  p85 = transform_point(translateOutMatrix, p85);
  p86 = transform_point(translateOutMatrix, p86);
  p87 = transform_point(translateOutMatrix, p87);
  p88 = transform_point(translateOutMatrix, p88);
  /* Translating-Out FRONT */
  p89 = transform_point(translateOutMatrix, p89);
  p90 = transform_point(translateOutMatrix, p90);
  p91 = transform_point(translateOutMatrix, p91);
  p92 = transform_point(translateOutMatrix, p92);
  
  /**** Rotation of Tire 1 ended *******/
  
  getTire2Centre();
  
  /* Rotating Skateboard's TIRE 2 */
  /* Translating-In BACK */
  p93 = transform_point(translateInMatrix, p93);
  p94 = transform_point(translateInMatrix, p94);
  p95 = transform_point(translateInMatrix, p95);
  p96 = transform_point(translateInMatrix, p96);
  /* Translating-In FRONT */
  p97 = transform_point(translateInMatrix, p97);
  p98 = transform_point(translateInMatrix, p98);
  p99 = transform_point(translateInMatrix, p99);
  p100 = transform_point(translateInMatrix, p100);
  /* rotating BACK */
  p93 = transform_point(inv_rotZMatrix, p93);
  p94 = transform_point(inv_rotZMatrix, p94);
  p95 = transform_point(inv_rotZMatrix, p95);
  p96 = transform_point(inv_rotZMatrix, p96);
  /* rotating FRONT */
  p97 = transform_point(inv_rotZMatrix, p97);
  p98 = transform_point(inv_rotZMatrix, p98);
  p99 = transform_point(inv_rotZMatrix, p99);
  p100 = transform_point(inv_rotZMatrix, p100);
  
  /* Translating-Out BACK */
  p93 = transform_point(translateOutMatrix, p93);
  p94 = transform_point(translateOutMatrix, p94);
  p95 = transform_point(translateOutMatrix, p95);
  p96 = transform_point(translateOutMatrix, p96);
  /* Translating-Out FRONT */
  p97 = transform_point(translateOutMatrix, p97);
  p98 = transform_point(translateOutMatrix, p98);
  p99 = transform_point(translateOutMatrix, p99);
  p100 = transform_point(translateOutMatrix, p100);
  
  /**** Rotation of Tire 2 ended *******/
    
}

void applyScale()
{
  /* Scale Spikes */
  /* BACK */
  p109 = transform_point(scaleMatrix, p109);
  p110 = transform_point(scaleMatrix, p110);
  p111 = transform_point(scaleMatrix, p111);
  p112 = transform_point(scaleMatrix, p112);
  p113 = transform_point(scaleMatrix, p113);
  p114 = transform_point(scaleMatrix, p114);
  p115 = transform_point(scaleMatrix, p115);
  p116 = transform_point(scaleMatrix, p116);
  p117 = transform_point(scaleMatrix, p117);
  p118 = transform_point(scaleMatrix, p118);
  p119 = transform_point(scaleMatrix, p119);
  
  /* FRONT */ 
  p120 = transform_point(scaleMatrix, p120);
  p121 = transform_point(scaleMatrix, p121);
  p122 = transform_point(scaleMatrix, p122);
  p123 = transform_point(scaleMatrix, p123);
  p124 = transform_point(scaleMatrix, p124);
  p125 = transform_point(scaleMatrix, p125);
  p126 = transform_point(scaleMatrix, p126);
  p127 = transform_point(scaleMatrix, p127);
  p128 = transform_point(scaleMatrix, p128);
  p129 = transform_point(scaleMatrix, p129);
  p130 = transform_point(scaleMatrix, p130);
  
  scaleCounter++;
}

/* Scale Spikes back */
void flipScale()
{
  /* Scale back Spikes */
  /* BACK */
  p109 = transform_point(invScaleMatrix, p109);
  p110 = transform_point(invScaleMatrix, p110);
  p111 = transform_point(invScaleMatrix, p111);
  p112 = transform_point(invScaleMatrix, p112);
  p113 = transform_point(invScaleMatrix, p113);
  p114 = transform_point(invScaleMatrix, p114);
  p115 = transform_point(invScaleMatrix, p115);
  p116 = transform_point(invScaleMatrix, p116);
  p117 = transform_point(invScaleMatrix, p117);
  p118 = transform_point(invScaleMatrix, p118);
  p119 = transform_point(invScaleMatrix, p119);
  
  /* FRONT */ 
  p120 = transform_point(invScaleMatrix, p120);
  p121 = transform_point(invScaleMatrix, p121);
  p122 = transform_point(invScaleMatrix, p122);
  p123 = transform_point(invScaleMatrix, p123);
  p124 = transform_point(invScaleMatrix, p124);
  p125 = transform_point(invScaleMatrix, p125);
  p126 = transform_point(invScaleMatrix, p126);
  p127 = transform_point(invScaleMatrix, p127);
  p128 = transform_point(invScaleMatrix, p128);
  p129 = transform_point(invScaleMatrix, p129);
  p130 = transform_point(invScaleMatrix, p130);
  
  
  scaleCounter++;
  
  if(scaleCounter > scaleResetValue)
  {
    scaleCounter = 1;
    
  }
  
}
