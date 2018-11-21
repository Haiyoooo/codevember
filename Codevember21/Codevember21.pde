Skateboard skateboard;
ArrayList<Tree> trees = new ArrayList<Tree>();

void setup()
{
  size(500,500);
  colorMode(HSB, 100);
  skateboard = new Skateboard();
}

void draw()
{
  background(100);
  skateboard.render();
  skateboard.update();
}

class Skateboard
{
  PVector position;
  PVector velocity;
  float w;
  float h;
  float skew;
  
  Skateboard()
  {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, -0.5);
    w = 200;
    h = 20;
    skew = 20;
  }
  
  void update()
  {
    position.add(velocity);
    bounce();
  }
  
  void render()
  {
    fill(100, 80, 80);
    noStroke();
    quad(position.x, position.y, position.x + w, position.y, position.x + w - skew, position.y + h, position.x - skew, position.y + h);
  }
  
  void bounce()
  {
    if(position.y > width/2 + 5)
    {
      velocity.y *= -1;
    }
    else if(position.y < width/2)
    {
      velocity.y *= -1;
    }
  }
}

class Tree
{
  Tree()
  {
  }
  
  void update()
  {
  }
  
  void render()
  {
  }
}
