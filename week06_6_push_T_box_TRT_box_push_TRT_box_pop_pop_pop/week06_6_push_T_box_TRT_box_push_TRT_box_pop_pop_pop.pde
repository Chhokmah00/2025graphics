//week06-6_push_T_box_TRT_box_push_TRT_box_pop_pop_pop
//組合機械手臂
void setup(){
   size(500,500,P3D); 
}
void draw(){
   background(255);
   translate(width/2,height/2);
   sphere(10); 
   
   fill(252,131,77);
   pushMatrix(); //step04 push
     box(50,200,25); //手臂
     pushMatrix();
       translate(x,y); //step03 掛到手臂上
       if(mousePressed) rotateZ(radians(frameCount)); //step02 旋轉
       translate(100,0); //step01 把手肘移動量100，0放入
       box(200,50,25); //手肘
       pushMatrix(); 
         translate(100,0);
         rotateZ(radians(frameCount)); 
         translate(25,0,0);
         box(50,25,50); //小手腕
       popMatrix();
     popMatrix(); 
   popMatrix();
}
float x=0,y=0; //會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("x: "+x+" y:"+y); //印出來
}
