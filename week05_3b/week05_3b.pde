//week05-3b
//degrees vs. radians 結合 week04-1,week05-2
void setup(){
   size(400,400); 
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx=mouseX-200,dy=mouseY-200;
  float a=atan2(dy,dx); //三角函式，可找到arc 弧的 radians
  //atan2()出來的值，介於-PI...PI之間
  if(a<0) arc(200,200,200,200,a,0,PIE); //負的...0
  else    arc(200,200,200,200,0,a,PIE); //0...正的
  textSize(30);
  text("radins: "+a,100,100); //radians 弧度/弳度
  text("degrees: "+degrees(a),100,130); //degrees 度
}
