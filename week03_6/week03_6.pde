//week03-6_lerp_frameCount
void setup(){
   size(400,400);
}
float startX=10,startY=10;
float stopX=390,stopY=390;
void draw(){
   ellipse(startX,startY,10,10);
   ellipse(stopX,stopY,10,10);
   //lerp()可以做內插，要給他0.0~1.0之間的數
   float midX=lerp(startX,stopY,frameCount/200.0);
   float midY=lerp(startX,stopY,frameCount/200.0);
   //frameCount是 第幾個frame 1hr=60min 1min=60s
   ellipse(midX,midY,10,10);
}
