PImage img;
void setup(){
  size(400,400);
  img = loadImage("g.jpg");
}
void draw(){
  background(img);
  fill(255,128); //半透明的色彩，白色alpha值128
  rect(0,0,400,400);
  
  stroke(255,0,0); //紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
