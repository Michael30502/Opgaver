  float ellX;
  float ellY;
  float ellX2;
  float ellY2;
  float ellPosX;
  float ellPosY;
  float eye1;
  float eye2;
  float nose;
  float hMove;
  float vMove;
  float either;
  int change = 0;
void setup() { 
  fullScreen();
  background(51);

  ellX= 50;
  ellY = 50;
   ellX2= 10;
  ellY2 = 10;
  ellPosX = 50;
  ellPosY = 50;
  eye1 = 10;
  eye2= - 10;
  nose = 20;
  either = 1;
}


  
void draw(){

    clear();
  drawFigure(0);
  drawFigure(200);
  drawFigure(400);
   drawFigure(600);
    drawFigure(800);

}
void drawFigure(int change){
  hMove = 0;
  vMove = 0;

  if (either == 2) {
  ellPosX += 7 ;

  either = 1;
  }
  else
  {
  ellPosY += 7 ;
  either = 2;
  }
  ellX += 1;
  ellY += 1;
  ellX2 += 0.2;
  ellY2 += 0.2;
    eye1 += 0.2;
  eye2 -= 0.2;
  nose += 0.2;
  ellipse(ellPosX+change,ellPosY,ellX,ellY);
// Øjne
ellipse(ellPosX+eye1+change,ellPosY-eye1/2,ellX2,ellY2);
ellipse(ellPosX+eye2+change,ellPosY+eye2/2,ellX2,ellY2);
// Nose
ellipse(ellPosX+change,ellPosY+nose,ellX2,ellY2);
}
