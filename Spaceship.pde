class Spaceship extends Floater  
{  
    public Spaceship() {
      corners = 4;
      xCorners = new int[]{-12,20,-12,-4};
      yCorners = new int[]{-12,0,12,0};
      myColor = 235;
      myCenterX = (Math.random()*500)+50;
      myCenterY = (Math.random()*500)+25;
      myXspeed = 1;
      myYspeed = 1;
      myPointDirection = (Math.random()*360);;
     
    }
}
