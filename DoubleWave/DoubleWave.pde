float basecount=0;

void setup(){
  size(displayWidth, 300);
  background(0);
  noStroke();
  fill(255) ;
  rect(0,0,width,height/2);
  fill(0);
  rect(0,height/2,width,height/2);
}

void draw(){
  for(float i=0;i*16<=width;i+=.03125){
    if(sin(basecount+i)+sin(basecount+i)>0){
      fill(255, 255, 255, 128);
    }else{
      fill(0, 0, 0, 128);
    }
    ellipse(i*32,height/2+sin(basecount+i)*64+sin(basecount+i/2)*64,2,2);
  }
  basecount-=.125;
}
