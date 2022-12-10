class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getXcenter();
    myCenterY = theShip.getYcenter();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(8);
  }
  public void show()
  {
    ellipse((float)myCenterX, (float)myCenterY, 10,10);

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
}
