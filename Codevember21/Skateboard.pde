class Skateboard
{
  PVector position;
  PVector velocity;
  float w;
  float h;
  float skew;
  float wheelSize;
  float bounce;
  
  Skateboard()
  {
    position = new PVector(width/2, height * 0.75);
    velocity = new PVector(0, -0.5);
    w = 200;
    h = 20;
    skew = 20;
    wheelSize = 20;
    bounce = 5;
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
    if(position.y > height * 0.75 + bounce)
    {
      velocity.y *= -1;
    }
    else if(position.y < height * 0.75)
    {
      velocity.y *= -1;
    }
  }
}
