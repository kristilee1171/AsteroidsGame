Spaceship one;
Star s [];
public void setup() {
  size(500,500);
  background(0);
  one = new Spaceship();
  s = new Star[200];
  for(int i = 0; i < s.length; i++){
    s[i] = new Star();
  }
}
public void draw() {
  background(0);
  one.show();
  one.move();
  for(int i = 0; i < s.length; i++){
    s[i].show();
  }
}
public void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      one.turn(-15);
    }
    if(keyCode == RIGHT){
      one.turn(15);
    }
    if(keyCode == UP){
      one.accelerate(2);
    }
    if(keyCode == DOWN){
      one.setX((int)(Math.random()*500));
      one.setY((int)(Math.random()*500));
      one.setDirectionX(0);
      one.setDirectionY(0);
      one.setPointDirection((int)(Math.random()*360));
    }
  } 
}

