//想要有很多段，不要一筆畫
ArrayList<Integer> x,y;
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>(); //大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
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
  for(int I=0;I<xx.size();I++){ //大寫I對應大的資料結構
     ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
     ArrayList<Integer> y = yy.get(I);
     for(int i=1;i<x.size();i++){ //小的，再照舊畫
       line(x.get(i),y.get(i),x.get(i-1),y.get(i-1)); 
     }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
   x = new ArrayList<Integer>(); xx.add(x);
   y = new ArrayList<Integer>(); yy.add(y);
} //滑鼠按下去時，建新的資料結構
