ArrayList<Integer> x = new ArrayList<Integer>(); //新建資料結構
ArrayList<Integer> y = new ArrayList<Integer>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("g.jpg");
}
void draw(){
  background(img);
  fill(255,128); //半透明的色彩，白色alpha值128
  rect(0,0,400,400);
  //上面是week02-4，下面用迴圈，從資料結構取出來
  for(int i=1;i<x.size();i++){
     line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
