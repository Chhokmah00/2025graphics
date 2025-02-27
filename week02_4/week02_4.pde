PImage img;
void setup(){
  size(400,400);
  img = loadImage("g.jpg");
}
void draw(){
  background(img);
  fill(255,mouseX); //半透明的色彩，白色alpha值128
  println(mouseX); //把mouseX的值顯示
  rect(0,0,400,400);
}
