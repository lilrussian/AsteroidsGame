Spaceship bruh = new Spaceship();
 Star[] sky = new Star[400];
 
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
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
      if(dist(rock.get(i).getX(), rock.get(i).getY(), bruh.getX(), bruh.getY() ) < 30){
        rock.remove(i);
      }
    }
   
    
    for(int j = 0; j < rock.size(); j++){
    for(int i = 0; i < shoot.size(); i++){
      if(dist(rock.get(j).getX(), rock.get(j).getY(),shoot.get(i).getX(), shoot.get(i).getY() ) < 30){
          rock.remove(j);
          shoot.remove(i);
           // score++;
            break;
        }
    }
  }
  
    
 
  
  for(int i = 0; i < shoot.size(); i++){
    shoot.get(i).show();
    shoot.get(i).move();

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
    if(key == 'q'){
    shoot.add(new Bullet(bruh));
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
