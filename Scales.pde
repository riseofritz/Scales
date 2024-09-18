int z = 0;  
int r = -100;

void setup() {
  size(700, 700);
  background(0);
}

void draw() {
  background(0);
  z+=5;
  z-=(int)(Math.random()*3);
  r+=20;
  for (int y=0; y<=1000; y+=80) {
    for (int x = -100000; x<=1000; x+=20) {
      fill(144, r, r);
      droplet(x + z, y);
        }
  }

  for (int y=0; y<=10000; y+=80) {
    for (int x=0; x<=10000; x+=20) {
      fill(68, r-15, r);
      inlot(x-z, y);
    }
  }
}


void droplet(int x, int y) {
  beginShape(); 
    curveVertex(x, y); 
    curveVertex(x, y); 
    curveVertex(x-30, y+60); 
    curveVertex(x, y+80); 
    curveVertex(x+30, y+60); 
    curveVertex(x, y); 
    curveVertex(x, y); 
    endShape();
}

void inlot(int x, int y) {
  beginShape(); 
    curveVertex(x, y); 
    curveVertex(x, y); 
    curveVertex(x-30, y+30); 
    curveVertex(x, y+40); 
    curveVertex(x+30, y+50); 
    curveVertex(x, y); 
    curveVertex(x, y); 
    endShape();
}
