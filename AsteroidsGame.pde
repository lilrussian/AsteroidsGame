Spaceship bruh = new Spaceship();
 Star[] sky = new Star[400];
 
 ArrayList <Asteroid> rock = new ArrayList <Asteroid>();

public void setup()
{
  size(600,600);
  for(int i = 0; i<sky.length;i++) {
    sky[i] = new Star();
  }
  for (int i=0; i< 13; i++){
      rock.add(new Asteroid());
   }
}
public void draw()
{
  background(0);
   for(int i = 0; i<sky.length;i++) {
    sky[i].show();
  }
   for(int i = 0; i < rock.size(); i++){
      rock.get(i).show();
      rock.get(i).move();
      float distance = dist(bruh.getX(), bruh.getY(), rock.get(i).getX(), rock.get(i).getY());
      if (distance < 30)
        rock.remove(i);
    }
    
    
  bruh.move();
  bruh.show();
  
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
