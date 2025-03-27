//week06-1_ellipse_translate_push_rotate_box_pop
void setup(){
   size(500,500,P3D); 
}
void draw(){
   background(142);
   ellipse(width/2,height/2,200,200);
   translate(width/2,height/2); //把東西放到畫面中心
   pushMatrix();
     //要按下滑鼠才轉動
     if(mousePressed) rotateZ(radians(frameCount)); //對著中心旋轉
     box(100,30,30);
   popMatrix();
}
