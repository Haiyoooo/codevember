Skateboard skateboard;
Tree tree;

void setup()
{
  size(500,500);
  colorMode(HSB, 100);
  skateboard = new Skateboard();
  tree = new Tree();
}

void draw()
{
  background(100);
  skateboard.render();
  skateboard.update();
  tree.render();
  tree.update();
}

class Skateboard
{
  PVector position;
  PVector velocity;
  float w;
  float h;
  float skew;
  float wheelSize;
  
  Skateboard()
  {
    position = new PVector(width/2, height * 0.75);
    velocity = new PVector(0, -0.5);
    w = 200;
    h = 20;
    skew = 20;
    wheelSize = 20;
  }
  
  void update()
  {
    position.add(velocity);
    bounce();
  }
  
  void render()
  {
    noStroke();
    
    // skateboard wheels
    fill(0, 20, 50);
    ellipse(position.x + w * 0.20 - skew, position.y + h, wheelSize, wheelSize); //front wheel
    ellipse(position.x + w * 0.85 - skew, position.y + h, wheelSize, wheelSize); //back wheel
    
    // skateboard board
    fill(100, 80, 80);
    quad(position.x, position.y, position.x + w, position.y, position.x + w - skew, position.y + h, position.x - skew, position.y + h);
  }
  
  void bounce()
  {
    // bouncing animation
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
  PVector position;
  float leaves_w, leaves_h;
  float trunk_w, trunk_h;
  
  Tree()
  {
    position = new PVector(width/2, height * 0.5);
    leaves_w = 40;
    leaves_h = 60;
    trunk_w = 20;
    trunk_h = 50;
  }
  
  void update()
  {
  }
  
  void render()
  {
    //trunk
    fill(100, 50, 50);
    rect(position.x, position.y, trunk_w, trunk_h);
    
    //leaves
    fill(20, 50, 50);
    triangle(position.x + trunk_w/2 - leaves_w/2, position.y,
             position.x + trunk_w/2 + leaves_w/2, position.y,
             position.x + trunk_w/2,              position.y - trunk_h - leaves_h);
    
  }
}
