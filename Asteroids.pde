class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (double)((Math.random()-0.5)*4);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8; 
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = (150);
    myCenterX = 255;
    myCenterY = 255;
    myXspeed = 2;
    myPointDirection = 0;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }

  //  public void setXcenter()
  //  {
   //   myCenterX = (int)(Math.random()*1000);
   // }
   // public void setYcenter()
   // {
   //   myCenterY = (int)(Math.random()*1000);
   // }
    public void setPositon()
    {
       myPointDirection = (int)(Math.random()*360);  
    }
   // public double getX ()
   // {
   //   return myCenterX;
   // }
    //public double getY()
   // {
   //   return myCenterY;
   // }
    public double getXcenter ()
    {
      return myCenterX;
    }
    public void setXcenter()
    {
      myCenterX = (int)(Math.random()*1000);
    }
    public double getYcenter ()
    {
      return myCenterY;
    }
    public void setYcenter()
    {
      myCenterY = (int)(Math.random()*1000);
    }
      
}
