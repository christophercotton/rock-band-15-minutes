int top = 20;
int bottom = 500;

int noteax = 125;
int noteay = top;

int notesx = 250;
int notesy = top;

int notedx = 375;
int notedy = top;

int score=0;
int misses=0;

void setup()
{
  size(500,500);
  textFont(createFont("Verdana",50));
}

void draw()
{
  background(255, 255, 255);
  fill(255, 0, 0);
  text("Misses " + misses, 250, 50);

  fill(0, 0, 255);
  text(score, 20, 50);

  fill(0, 0, 0);
  line(0, 400, 500, 400);
  line(125, 20, 125, 400);
  line(250, 20, 250, 400);
  line(375, 20, 375, 400);

  fill(150, 0, 225);
  ellipse(noteax, noteay, 20, 20);

  fill(111, 255, 112);
  ellipse(notesx, notesy, 20, 20);

  fill(111, 181, 255);
  ellipse(notedx, notedy, 20, 20);

  noteay = noteay + 5;
  notesy = notesy + 5;
  notedy = notedy + 5;

  fill( random(255), random(255), random(255));
  text("A", 110, 450);
  text("S", 235, 450);
  text("D", 360, 450);

  if(noteay > bottom)
  {
    noteay = top;
    misses = misses + 1; 
  }

  if(notesy > bottom)
  {
    notesy = top;
    misses = misses + 1;
  }  

  if(notedy > 500)
  {
    notedy = top;
    misses = misses + 1;
  }

}

void keyPressed()
{
  if(key == 'a'&& noteay>390 && noteay<450)
  {
    score = score + 100;
    noteay = top;
    return;
  }

  if(key == 's' && notesy>390 && notesy<450)
  {
    score = score+100;
    notesy = top;
    return;
  }

  if(key == 'd' && notedy>390 && notedy<450)
  {
    score = score + 100;
    notedy = top;
    return;
  }

  score = score - 50;
}



