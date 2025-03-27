//week06-5_push_T_box_TRT_box_pop_pop
//組合機械手臂
void setup(){
   size(500,500,P3D); 
}
void draw(){
   background(255);
   translate(width/2,height/2);
   sphere(10); //圓球，當中心參考
   
   
   fill(252,131,77);
   pushMatrix(); //step04 新的一組
     translate(x,y);
     box(200,50,25); //手肘
     pushMatrix(); //step03 程式向右縮排
       translate(100,0); //step01 把發現的100，0放好
       //if(mousePressed) rotateZ(radians(frameCount));
       rotateZ(radians(frameCount)); //step02 一直轉動
       translate(25,0,0);
       box(50,25,50); //小手腕
     popMatrix();
   popMatrix(); //step04 新的一組
}
float x=0,y=0; //會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("x: "+x+" y:"+y); //印出來
}
