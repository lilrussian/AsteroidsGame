
class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  private int size;
  
  public Star() {
    myX = (int)(Math.random()*650);
    myY = (int)(Math.random()*650);
    size = (int)(Math.random()*3);
  }
  
  public void show() {
    fill(255);
    ellipse(myX, myY, size, size);
  }
}
