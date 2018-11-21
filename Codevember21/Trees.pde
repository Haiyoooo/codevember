class Tree
{
  PVector position;
  float leaves_w, leaves_h;
  float trunk_w, trunk_h;
  float speed;
  float brightness, saturation;
  
  Tree()
  {
    position = new PVector(-100, height * 0.5);
    leaves_w = random(50, 100);
    leaves_h = random(60, 150);
    trunk_w = 20;
    trunk_h = 50;
    speed = 5;
    brightness = random(50, 80);
    saturation = random(50, 80);
  }
  
  void update()
  {
    position.x += speed;
  }
  
  void render()
  {
    //trunk
    fill(100, 50, 50);
    rect(position.x, position.y, trunk_w, trunk_h);
    
    //leaves
    fill(20, saturation, brightness);
    triangle(position.x + trunk_w/2 - leaves_w/2, position.y,
             position.x + trunk_w/2 + leaves_w/2, position.y,
             position.x + trunk_w/2,              position.y - trunk_h - leaves_h);
  }
  
  boolean isDead()
  {
    if(position.x > width + 50)
    {
      return true;
    }
    return false;
  }
}
