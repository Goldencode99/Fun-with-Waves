float basecount=0;

void setup(){
  size(displayWidth, displayHeight);
  noCursor();
}

void draw(){
  background(0);
  noStroke();
  for(float i=0;i*16<=width;i+=.03125){
    fill(255,255,0);
    ellipse(i*32,height/2+sin(basecount+i)*64,2,2);
    fill(0,0,255);
    ellipse(i*32,height/2+sin(basecount+i/2)*64,2,2);
    fill(0,255,0);
    ellipse(i*32,height/2+sin(basecount+i)*64+sin(basecount+i/2)*64,2,2);
  }
  basecount-=.125;
}
