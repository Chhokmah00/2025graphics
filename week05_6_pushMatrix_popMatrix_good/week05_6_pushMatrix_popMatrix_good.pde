//week05-6_pushMatrix_popMatrix_good
//因為有很多旋轉移動，所以永「分階層」做事
void setup(){
   size(400,400); 
}
void draw(){
   background(204);
   
   pushMatrix();
   translate(width/2,height/2); //移到畫面中心
   rotate(radians(frameCount)*10);
   rect(-50,-5,100,10);
   popMatrix();
   
   pushMatrix();
   translate(width/2-100,height/2);
   rotate(radians(frameCount)*10);
   rect(-50,-5,100,10);
   popMatrix();
}
