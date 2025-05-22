//week14-8
void setup(){
   size(400,400); 
   for(int i=0;i<6;i++){
      p[i]=new PVector(200,350-50*i); 
   }
}
PVector [] p=new PVector[6];
void draw(){
   background(255);
   for(int i=0;i<6;i++){
      if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
      fill(255,0,0);
      ellipse(p[i].x,p[i].y,8,8);
      fill(0);
      text("p:"+i,p[i].x+10,p[i].y);
   }
   PVector now=new PVector(mouseX,mouseY); //現在位置
   for(int i=5;i>0;i--){
     PVector v=PVector.sub(now,p[i]).normalize().mult(50); //短向量
     //因為長度限制50，所以長向量 先長度變成1 再乘上50
     p[i].x=now.x-v.x; //新的位置，是中心，再加上長度50
     p[i].y=now.y-v.y; //新的位置，是中心，再加上長度50
     now=p[i];
   }
   ellipse(mouseX,mouseY,6,6);
   //line(p[4].x,p[4].y,mouseX,mouseY);
}
