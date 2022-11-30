class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = 20;
      yCorners[0] = 0;
      xCorners[1] = -8;
      yCorners[1] = 8;
      xCorners[2] = 0;
      yCorners[2] = 0;
      xCorners[3] = -8;
      yCorners[3] = -8;
      myColor = (255);
      myCenterX = 250;
      myCenterY = 250;
      myPointDirection = 0;
    }
    public double getXspeed()
    {
      return myXspeed;
    }
    public void setXspeed(double x)
    {
      myXspeed = x;
    }
     public double getYspeed()
    {
      return myYspeed;
    }
    public void setYspeed(double y)
    {
      myYspeed = y;
    }
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
    public void setPositon()
    {
       myPointDirection = (int)(Math.random()*360);
     }
}

