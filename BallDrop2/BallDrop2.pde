float xBall = width/2, yBall= height/2, ballExtent = 50;
float rectPosX = 5, rectPosY = 5;
float rectWidth, rectHeight;
float xBaseSpeed = 10, yBaseSpeed = 10, xSpeed = xBaseSpeed, ySpeed= yBaseSpeed;
float screenWidth, screenHeight;
float screenScaler, screenScaler2;
float xMulti = 0.4, xPosMulti = 0.2, yMulti = 0.4, yPosMulti = 0.2;
float xBaseMulti, xBasePosMulti, yBaseMulti, yBasePosMulti;
boolean check = true;
boolean cws = false, chs = false;
boolean widthMovement = true, heightMovement = true;

void setup() {
  fullScreen();
  frameRate = 60;
  background(0, 0, 0);

  //Assigning values to variables
  rectWidth= width-6;
  rectHeight = height-5;
  screenWidth = width;
  screenHeight = height;
  xBall = width/2;
  yBall = height/2;
  //  Derterming the resouloution scale
  screenScaler = screenWidth/screenHeight;
  screenScaler2 = screenHeight/screenWidth;
  if (screenScaler2 > 1)
  {
    yMulti = yMulti*screenScaler2;
    yPosMulti = yPosMulti*screenScaler2;
  } 

  if (screenScaler > 1)
  {
    xMulti = xMulti*screenScaler;
    xPosMulti = xPosMulti*screenScaler;
  }


  xBaseMulti = xMulti;
  xBasePosMulti = xPosMulti;
  yBaseMulti = yMulti;
  yBasePosMulti = yPosMulti;
}
//Check x and y multibase 





void draw() {

  if (rectWidth < 50)
  {
    xMulti *= -1;
    xPosMulti *= -1;
  }
  if (rectHeight < 50)
  {
    yMulti *= -1;
    yPosMulti *= -1;
  }

    if (rectWidth > width-2)
    {
      xMulti = xBaseMulti;
      xPosMulti = xBasePosMulti;
        }


    if (rectHeight > height-2)
    {
      yMulti = yBaseMulti;
      yPosMulti = yBasePosMulti;
    }

  if (widthMovement == true)
  {
    rectWidth -= xMulti;
    rectPosX += xPosMulti;
  }

  if (heightMovement == true)
  {
    rectPosY += yPosMulti;
    rectHeight -= yMulti;
  }

  if (rectWidth < width-2 || rectHeight >= height-2 && rectWidth >= width-2)
  {
    widthMovement = true;
  } 
  else
    widthMovement = false;
//


  if (rectHeight < height-2 || rectHeight > height-2 && rectWidth > width-2)
  {
    heightMovement = true; 
  }
  else 
  heightMovement = false;



  xBall += xSpeed;
  yBall += ySpeed;
  if (xBall+35>=(rectPosX+rectWidth))
    xSpeed = -xBaseSpeed;
  if (xBall-35<= rectPosX)
    xSpeed = xBaseSpeed;
  if (yBall+35>=(rectPosY+rectHeight))
    ySpeed = -yBaseSpeed;
  if (yBall-35<= rectPosY)
    ySpeed = yBaseSpeed; 

  clear();
  stroke(255, 255, 255);
  noFill();

  rect(rectPosX, rectPosY, rectWidth, rectHeight);
  fill(255, 255, 255);
  circle(xBall, yBall, ballExtent);
}
