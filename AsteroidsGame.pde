Spaceship one;
public void setup() {
  size(500,500);
  background(0);
  one = new Spaceship();
}
public void draw() {
  background(0);
  one.show();
  one.move();
}
public void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      one.turn(-10);
    }
    if(keyCode == RIGHT){
      one.turn(10);
    }
    if(keyCode == UP){
      one.accelerate(2);
    }
    if(keyCode == DOWN){
      one.setX((int)(Math.random()*500));
      one.setY((int)(Math.random()*500));
    }
  } 
}

