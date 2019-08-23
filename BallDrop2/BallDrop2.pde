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

if(widthMovement == true)
{
    rectWidth -= xMulti;
    rectPosX += xPosMulti;
}

if(heightMovement == true)
{
    rectPosY += yPosMulti;
    rectHeight -= yMulti;

}

  if (rectWidth < width-4 || rectHeight >= height-4 && rectWidth >= width-4)
  {
widthMovement = true;
  if(rectWidth < width-4)
{

}
else
{
  xMulti = -xBaseMulti;
xPosMulti = -xBasePosMulti;
}
{

}
  }
  else
  widthMovement = false;

  if (rectHeight < height-4 || rectHeight > height-4 && rectWidth > width-4)
  {
    heightMovement = true;
   if (rectHeight < height-4)
    {
    }
    else
    {
      yMulti = -yBaseMulti;
yPosMulti = -yBasePosMulti;
    }
  }
  else 
  heightMovement = false;



  xBall += xSpeed;
  yBall += ySpeed;
  if (xBall+25>=(rectPosX+rectWidth))
    xSpeed = -xBaseSpeed;
  if (xBall-25<= rectPosX)
    xSpeed = xBaseSpeed;
  if (yBall+25>=(rectPosY+rectHeight))
    ySpeed = -yBaseSpeed;
  if (yBall-25<= rectPosY)
    ySpeed = yBaseSpeed; 
 
  clear();
  stroke(255, 255, 255);
  noFill();

  rect(rectPosX, rectPosY, rectWidth, rectHeight);
  fill(255, 255, 255);
  circle(xBall, yBall, ballExtent);


}
