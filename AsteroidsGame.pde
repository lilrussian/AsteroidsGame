 Spaceship bruh = new Spaceship();
public void setup()
{
  size(600,600);
}
public void draw()
{
  background(0);
 
 
  if(keyPressed) {
    if (key == 'a') {
    bruh.turn(-6.5);
    }
    if (key == 'd') {
    bruh.turn(6.5);
    }
    if (key == 'w') {
      bruh.accelerate(0.15);
      
    }
    if (key == 's') {
      bruh.accelerate(-0.15);
    }
  }
  bruh.move();
  bruh.show();
}
public void keyPressed() {
 
 
}
