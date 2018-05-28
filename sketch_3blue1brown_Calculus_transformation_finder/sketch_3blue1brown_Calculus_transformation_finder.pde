int max = 7;
int min = -max;
float spacing = 0.1;
int domainMagnitude = max-min;
void setup()
{
  size(640,360);
}
void draw()
{
  background(0);
  for (float x = min; x <= max; x+=spacing)
  {
    float y = sqrt(25-sq(x));
    stroke(255,((x+max)/domainMagnitude)*255,((x+max)/domainMagnitude)*255);
    line(x*((width/2)/max)+width/2,100,y*((width/2)/max)+width/2,height-100);
  }
  stroke(0,255,255);
  line(0,100,width,100);
  line(0,height-100,width,height-100);
  stroke(255,127,0);
  line(width/2,0,width/2,height);
  stroke(255);
  textSize(24);
  for (int i = min; i <= max; i++)
  {
    text(str(i),i*((width/2)/max)+width/2,100);
    text(str(i),i*((width/2)/max)+width/2,height-100);
  }
}
