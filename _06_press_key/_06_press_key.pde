int top = 20;
int bottom = 500;

int notesx = 250;
int notesy = top;

void setup()
{
  size(500,500);
}

void draw()
{
  background(255, 255, 255);
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
  
  
}

