void setup()
{
  size(675,600);
  smooth();
}

void draw()
{
  background(0);
  
  // Loop draw LaiThai
  for(int i=0; i<=height; i=i+150)
  {
    for(int j=0; j<=width; j=j+150)
    {
      drawLaiThai(i,j,0.5);
      delay(100);
    }
  }
  
}

void drawLaiThai(int x,int y,float sF)
{
  fill(random(128,255),random(128,255),random(128,255)); // petal color
  // North petal
  quad(x,y,x-(40*sF),y-(50*sF),x,y-(150*sF),x+(40*sF),y-(50*sF));
  // South petal
  quad(x,y,x-(40*sF),y+(50*sF),x,y+(150*sF),x+(40*sF),y+(50*sF));
  // East petal
  quad(x,y,x+(50*sF),y-(40*sF),x+(150*sF),y,x+(50*sF),y+(40*sF));
  // West petal
  quad(x,y,x-(50*sF),y-(40*sF),x-(150*sF),y,x-(50*sF),y+(40*sF));
  
  fill(255);
  // Central circles
  ellipse(x,y,80*sF,80*sF); // Outter 
  ellipse(x,y,40*sF,40*sF); // Inner
}