class Asteroid extends Floater{
  public double rotSpeed;
  public Asteroid(){
    rotSpeed = 0;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[0] = 7;
    yCorners[0] = -8;
    xCorners[0] = 13;
    yCorners[0] = 0;
    xCorners[0] = 6;
    yCorners[0] = 10;
    xCorners[0] = -11;
    yCorners[0] = 8; 
    xCorners[0] = -5;
    yCorners[0] = 0;
    myColor = (200);
    myCenterX = 0;
    myCenterY = 0;
    myXspeed = 0;
    myPointDirection = 0;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getXcenter ()
    {
      return myCenterX;
    }
  public double getYcenter ()
    {
      return myCenterY;
    }
}
