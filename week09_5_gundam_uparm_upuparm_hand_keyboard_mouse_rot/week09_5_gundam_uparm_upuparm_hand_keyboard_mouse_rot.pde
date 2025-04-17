//week09-5_gundam_uparm_upuparm_hand_keyboard_mouse_rot
PShape uparm1,upuparm1,hand1;
void setup(){
   size(400,400,P3D); 
   uparm1=loadShape("uparm1.obj");
   upuparm1=loadShape("upuparm1.obj");
   hand1=loadShape("hand1.obj");
}
float[]angle=new float[20];
int ID=0;
void keyPressed(){
   if(key=='1') ID=1;
   if(key=='2') ID=2;
}
void mouseDragged(){
   angle[ID]+=mouseX-pmouseX; 
}

void draw(){
   background(204);
   translate(200,300);
   sphere(3); //原點的球
    
   scale(10,-10,10); //y要上下反過來
   
   shape(upuparm1,0,0); //上上手臂
   pushMatrix();
     translate(-4.1,19.9); //掛回原本的位置
     rotateZ(radians(angle[1]));
     translate(4.5,-19.9); //把物體旋轉中心放到座標中
     shape(uparm1,0,0); //上手臂
     pushMatrix();
       translate(-4.5,16.9);
       rotateX(radians(angle[2]));
       translate(4.5,-16.9);
       //translate(mouseX/10,-mouseY/10); //移動、找數值
       //println(mouseX/10,-mouseY/10); //印出適合的數值
       shape(hand1,0,0);
     popMatrix();
   popMatrix();
}
