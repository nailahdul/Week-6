//Nailah Duliepre - Robot

float tempX;
float tempY;
float tempSize;

float tempAngle = 0.0;
float scalar = -30;
float tempSpeed = 0;

float xOffset;
float yOffset;
float xDirection;
float yDirection;

int timer1 = 4000;
int timer2 = 9000;



void setup (){
  size(600, 600);
  tempX = width/2;
  tempY = height/2;
  tempSize = 0;
  xOffset = width/2;
  yOffset = height/2;
  strokeWeight(4);
}

void draw (){
  background(#7FCEF7);
  float circX = xOffset + sin(tempAngle) * scalar;
  float circY = yOffset + cos(tempAngle) * scalar;
  
   if (millis() >timer1){
    xDirection = random (-2, 2);
    yDirection = random (-2, 2);
  }else if (millis() > timer2) {
    if (xDirection<0) {
      xDirection = -2;
    }else {
      xDirection = 2;
    }
    if (yDirection<0) {
      yDirection = -2;
    }else {
      yDirection = 2;
    }
  }
  tempX = tempX + xDirection;
  tempY = tempY + yDirection;
 
  

  //robot
  //head light
  fill(random(0,255),(230),(0));
  ellipse(circX, circY - 230, tempSize+30, tempSize-30);
  //antenna
  fill(#FA0015);
  rect(tempX-3, tempY-175, tempSize+4, tempSize-9, 1);
  //ears left/right
  fill(#04AF46);
  ellipse(tempX-30, tempY-122, tempSize+50, tempSize+50);
  ellipse(tempX+30, tempY-122, tempSize+50, tempSize+50);
  //head
  fill(#FA0015);
  rect(tempX-40, tempY-159, tempSize+80, tempSize+80);
  //body
  fill(#FA0015);
  rect(tempX-60, tempY-70, tempSize+120, tempSize+140, 1);
  //eyes
  fill(random(0,255),(230),(0));
  ellipse(tempX, tempY-126, tempSize+54, tempSize+54);
  //arms left/right
  fill(#FA0015);
  rect(tempX-89, tempY-70, tempSize+23, tempSize+140);
  rect(tempX+66, tempY-70, tempSize+23, tempSize+140);
  //feet left/right
  fill(#FA0015);
  rect(tempX-80, tempY+78, tempSize+57, tempSize+26, 1);
  rect(tempX+21, tempY+78, tempSize+57, tempSize+26, 1);
  fill(#04AF46);
  ellipse(tempX-67, tempY+123, tempSize+25, tempSize+25);
  ellipse(tempX-30, tempY+123, tempSize+25, tempSize+25);
  ellipse(tempX+30, tempY+123, tempSize+25, tempSize+25);
  ellipse(tempX+67, tempY+123, tempSize+25, tempSize+25);
  
  //movement
  tempAngle+=tempSpeed+0.05;
  
}