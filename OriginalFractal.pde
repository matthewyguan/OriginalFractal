public int finalpattern = 0;

public void setup() {
  size(1000,1000);
  noLoop();
}

public void draw() {
  background(0);
  circles(500,500,width,0);
}
public void mousePressed() {
  if (mouseButton == RIGHT) {
    finalpattern = 0;
  }
  if (mouseButton == LEFT) {
    finalpattern += 1;
  }
  redraw();
}

public void circles(float x, float y, float len, int pattern) {
  ellipse(x,y,len,len);
  if (finalpattern <= pattern) {
    ellipse(x,y,len,len);
  }
  else {
    fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
    circles(x-len/4,y,len/2,pattern + 1);
    circles(x+len/4,y,len/2,pattern + 1);
  }
}
