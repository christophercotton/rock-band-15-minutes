int top = 20;
int bottom = 500;

int notesx = 250;
int notesy = top;

int score = 0;

void setup()
{
  size(500,500);
  textFont(createFont("Verdana", 50));
}

void draw()
{
  background(255, 255, 255);
  fill(255, 0, 0);
  text(score, 20, 50);
  
  line(250, 20, 250, 400);
  ellipse(notesx, notesy, 20, 20);
  
  notesy = notesy + 4;
  
  if (notesy > bottom)
  {
    notesy = top;
  }
    
}

void keyPressed()
{
  if (key == 's')
  {
    score = score + 100;
    notesy = top;
  }
}

