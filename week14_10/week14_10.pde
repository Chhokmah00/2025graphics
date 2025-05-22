//week14-9
void setup(){
   size(400,800); 
   for(int i=0;i<N;i++){
      p[i]=new PVector(200,350-L*i); 
   }
}
int N=100,L=300/N;
PVector [] p=new PVector[N];
void draw(){
   background(255);
   for(int i=0;i<N;i++){
      if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
      fill(255,0,0);
      ellipse(p[i].x,p[i].y,5,5);
      fill(0);
      text("p:"+i,p[i].x+10,p[i].y);
   }
   //PVector now=new PVector(mouseX,mouseY); //現在位置
   p[N-1].x=mouseX;
   p[N-1].y=mouseY;
   for(int i=N-2;i>0;i--){
     PVector v=PVector.sub(p[i+1],p[i]).normalize().mult(10); //短向量
     //因為長度限制50，所以長向量 先長度變成1 再乘上50
     p[i].x=p[i+1].x-v.x; //新的位置，是中心，再加上長度50
     p[i].y=p[i+1].y-v.y; //新的位置，是中心，再加上長度50
     //now=p[i];
   }
   for(int i=1;i<=N-1;i++){
      PVector v=PVector.sub(p[i],p[i-1]).normalize().mult(10);
      p[i].x=p[i-1].x+v.x;
      p[i].y=p[i-1].y+v.y;
   }
   ellipse(mouseX,mouseY,5,5);
   //line(p[4].x,p[4].y,mouseX,mouseY);
}
