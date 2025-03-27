//week06-4_push_TRT_box_pop
//組合機械手臂
void setup(){
   size(500,500,P3D); 
}
void draw(){
   background(255);
   translate(width/2,height/2);
   sphere(10); //圓球，當中心參考
   
   box(200,50,25); //手肘
   
   fill(252,131,77);
   pushMatrix();
     translate(x,y);
     if(mousePressed) rotateZ(radians(frameCount));
     translate(25,0,0);
     box(50,25,50); //小手腕
   popMatrix();
}
float x=0,y=0; //會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("x: "+x+" y:"+y); //印出來
}
