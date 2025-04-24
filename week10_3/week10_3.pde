//week10-3
PImage postman,head,body,arm1,hand1,arm2,hand2;
void setup(){
 size(560,560);
 postman=loadImage("postman.png");
 head=loadImage("head.png");
 body=loadImage("body.png");
 arm1=loadImage("arm1.png");
 hand1=loadImage("hand1.png");
 arm2=loadImage("arm2.png");
 hand2=loadImage("hand2.png");
}
void draw(){
 background(#FFFFF2);
 image(postman,0,0);
 fill(255,0,255,128);
 rect(0,0,560,560);
 pushMatrix();
   translate(185,261);
   rotate(radians(mouseX));
   translate(-185,-261);
   image(arm1,0,0);
   pushMatrix();
     translate(116,265);
     rotate(radians(mouseX));
     translate(-116,-265);
     image(hand1,0,0);
   popMatrix();
 popMatrix();
 
 pushMatrix();
   translate(236,231);
   //rotate(radians(mouseX));
   translate(-236,-231);
   image(head,0,0);
 popMatrix();
 image(body,0,0);
}
