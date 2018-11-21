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
  background(50, 10, 100);
 fill(30, 50, 90);
  rect(0, height * 0.55, width, height/2);
  skateboard.render();
  skateboard.update();
  
  //spawn trees
  if(frameCount % 40 == 0)
  {
    trees.add( new Tree());
  }
  
  //tree manager
  for(int i = trees.size() - 1; i >= 0; i--)
  {
    Tree t = trees.get(i);
    t.render();
    t.update();
    
    if(t.isDead())
    {
      trees.remove(i);
    }
  }
}

//press any key to TURBO
void keyPressed()
{
  for(int i = trees.size() - 1; i >= 0; i--)
  {
    Tree t = trees.get(i);
    t.speed = 20;
  }
  
  skateboard.bounce = 2;
  skateboard.h = 15;
  skateboard.skew = 25;
}

void keyReleased()
{
    for(int i = trees.size() - 1; i >= 0; i--)
  {
    Tree t = trees.get(i);
    t.speed = 5;
  }
  
  skateboard.bounce = 5;
  skateboard.h = 20;
  skateboard.skew = 20;

}
