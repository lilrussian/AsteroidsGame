Spaceship bruh = new Spaceship();
 Star[] sky = new Star[400];
public void setup()
{
  size(600,600);
  for(int i = 0; i<sky.length;i++) {
    sky[i] = new Star();
  }
}
public void draw()
{
  background(0);
   for(int i = 0; i<sky.length;i++) {
    sky[i].show();
  }
 
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
 if (key == 'h') {
      bruh.setXspeed(0);
      bruh.setYspeed(0);
      bruh.setXcenter((Math.random()*550));
      bruh.setYcenter((Math.random()*550));
      bruh.setDirection((Math.random()*360));
    }
 
}
