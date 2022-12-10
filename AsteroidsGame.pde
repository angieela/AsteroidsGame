ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList <Asteroid> aList = new ArrayList<Asteroid>();
Spaceship bob = new Spaceship();
Star [] galaxy = new Star[50];
public void setup() 
{
  size(1000,1000);
  for(int i = 0; i < 50; i++)
  {
    galaxy[i] = new Star();
  }

  for(int i = 0; i < 15; i++)
  {
    Asteroid a = new Asteroid();
    aList.add(a);
    aList.get(i).setPositon();
    aList.get(i).setXcenter();
    aList.get(i).setYcenter();
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
  for(int i = 0; i < aList.size(); i++)
  {
    aList.get(i).show();
    aList.get(i).move();
    float d = dist((float)bob.getXcenter(), (float)bob.getYcenter(), (float)aList.get(i).getXcenter(), (float)aList.get(i).getYcenter());
    if (d < 20)
    {
      aList.remove(i);
    }
  }
  for(int i = 0; i < shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
    for(int t = 0; t < aList.size(); t++)
    {
      float f = dist((float)shots.get(i).getXcenter(), (float)shots.get(i).getYcenter(), (float)aList.get(t).getXcenter(), (float)aList.get(t).getYcenter());
      if (f < 20)
      {
        aList.remove(t);
        shots.remove(i);
        break;
      }
    }
  }
}
public void keyPressed()
{
  if(key == 'h')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setXcenter();
    bob.setYcenter();
    bob.show();
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
  if(key == 'p')
  {
    shots.add(new Bullet(bob));
  }
}
