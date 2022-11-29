Spaceship bob = new Spaceship();
Star [] galaxy = new Star[50];
public void setup() 
{
  size(1000,1000);
  for(int i = 0; i < 50; i++)
  {
    galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  for(int i = 0; i < galaxy.length; i++)
  {
    galaxy[i].show();
  }
  bob.move();
}
public void keyPressed()
{
  if(key == 'h')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setXcenter();
    bob.setYcenter();
    bob.setXposition();
    bob.setYposition();
  }
  if(key == 'a')
  {
    bob.accelerate(1);
  
  }
  if(key == 'r')
  {
    bob.turn(3);
  }
  if(key == 'l')
  {
    bob.turn(-3);
  }
  
 
}


