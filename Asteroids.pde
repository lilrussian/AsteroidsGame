class Asteroid extends Floater
{
  private int rotSpeed;

  public Asteroid(){
    rotSpeed = (int) (Math.random()*9)-4;
    corners = 8;

    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = -22;
      yCorners[0] = 10;
      xCorners[1] = -16;
      yCorners[1] = 20;
      xCorners[2] = -6;
      yCorners[2] = 16;
      xCorners[3] = 8;
      yCorners[3] = 20;
      xCorners[4] = 26;
      yCorners[4] = 2;
      xCorners[5] = 8;
      yCorners[5] = -6;
      xCorners[6] = 10;
      yCorners[6] = -20;
      xCorners[7] = -14;
      yCorners[7] = -14;
     
     myColor = color(120,120,120);
     myCenterX = (int) (Math.random()*601);
      myCenterY = (int) (Math.random()*601);
      //myDirectionX = (int) (Math.random()*5)-2;
      //myDirectionY = (int) (Math.random()*5)-2;
     myPointDirection = (int) (Math.random()*361);
     myXspeed = (int) (Math.random()*5)-2;
     myYspeed = (int) (Math.random()*5)-2;
  }

  public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }

  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
