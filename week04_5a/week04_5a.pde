//week04-5a
void setup(){
   size(400,400,P3D); 
}
void draw(){
   background(128);
   translate(width/2,height/2); //移到畫面中心
       //把以下2行分別註解，觀察
       rotateZ(radians(frameCount)); //對Z軸旋轉
       //translate(0,-50); //把下端移到中心
       box(10,100,10);
}
