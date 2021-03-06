class Asteroid extends Floater
{
  private int mySpeedRotation;
  public Asteroid()
  {
    mySpeedRotation = (int)((Math.random()*3)-2);
    myColor = color(152,152,152);
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -30;
    yCorners[0] = 10;
    xCorners[1] = -20;
    yCorners[1] = -5;
    xCorners[2] = -15;
    yCorners[2] = -10;
    xCorners[3] = 0;
    yCorners[3] = -5;
    xCorners[4] = 5;
    yCorners[4] = 0;
    xCorners[5] = 0;
    yCorners[5] = 20;
    xCorners[6] = -20;
    yCorners[6] = 25;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = 1;
    myDirectionY = 1;
  }
  public void move()
  {
    turn(mySpeedRotation);
    super.move();
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int) myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int) myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;} 
}
