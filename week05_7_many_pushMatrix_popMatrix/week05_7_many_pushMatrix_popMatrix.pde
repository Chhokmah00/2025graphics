//week05-7_many_pushMatrix_popMatrix
void setup(){
   size(500,500); 
}
void draw(){
   background(204);
   for(int x=50;x<500;x+=100){
      for(int y=50;y<500;y+=100){ //每個距離100
            pushMatrix(); //會往右縮排
             translate(x,y); //移到對應的x,y座標位置
             rotate(radians(frameCount)*x/50*y/50);
             rect(-50,-5,100,10); //長度100的棒子
            popMatrix();
      }
   }
}
