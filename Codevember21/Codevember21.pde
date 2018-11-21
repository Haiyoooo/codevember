Skateboard skateboard;
ArrayList<Tree> trees = new ArrayList<Tree>();

void setup()
{
  size(500,500);
  skateboard = new Skateboard();
}

void draw()
{
  skateboard.render();
  skateboard.update();
}

class Skateboard
{
  Skateboard()
  {
  }
  
  void update()
  {

  }
  
  void render()
  {
    fill(100);
    quad( mouseX, mouseY, 10, 20, 30, 40, 50, 50);
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
