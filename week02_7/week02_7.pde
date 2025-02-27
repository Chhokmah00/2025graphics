//想要有很多段，不要一筆畫
ArrayList<Integer> x,y;
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>(); //大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("g.jpg");
}
void draw(){
  background(img);
  fill(255,128); //半透明的色彩，白色alpha值128
  rect(0,0,400,400);
  //上面是week02-4，下面用迴圈，從資料結構取出來
  for(int I=0;I<xx.size();I++){ //大寫I對應大的資料結構
     ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
     ArrayList<Integer> y = yy.get(I);
     for(int i=1;i<x.size();i++){ //小的，再照舊畫
       line(x.get(i),y.get(i),x.get(i-1),y.get(i-1)); 
     }
  }
  noFill();
  strokeWeight(5);
  draw1();
}
void keyPressed(){
  if(key=='s' || key=='S') { //如果按下s或S想存檔的話
    for(int I=0;I<xx.size();I++){ //大寫I對應大的資料結構
     ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
     ArrayList<Integer> y = yy.get(I);
     for(int i=1;i<x.size();i++){ //小的，再照舊畫
       println("vertex("+x.get(i)+","+y.get(i)+");"); 
     }// 改在keyPressed() 按下s或S時再全部印
   }
  }
}
void mouseDragged(){
  //println("vertex(mouseX,mouseY);");
  //println("vertex("+mouseX+","+mouseY+");");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
   x = new ArrayList<Integer>(); xx.add(x);
   y = new ArrayList<Integer>(); yy.add(y);
} //滑鼠按下去時，建新的資料結構

void draw1(){
 beginShape();
  vertex(138,193);
  vertex(136,192);
  vertex(136,191);
  vertex(135,189);
  vertex(135,188);
  vertex(132,185);
  vertex(131,183);
  vertex(130,181);
  vertex(129,180);
  vertex(129,179);
  vertex(128,179);
  vertex(128,176);
  vertex(128,173);
  vertex(128,170);
  vertex(128,167);
  vertex(128,166);
  vertex(128,165);
  vertex(128,163);
  vertex(128,161);
  vertex(129,161);
  vertex(129,159);
  vertex(130,158);
  vertex(133,155);
  vertex(135,153);
  vertex(137,152);
  vertex(139,150);
  vertex(142,149);
  vertex(144,147);
  vertex(145,146);
  vertex(147,144);
  vertex(148,143);
  vertex(149,143);
  vertex(152,142);
  vertex(154,141);
  vertex(158,140);
  vertex(160,140);
  vertex(161,140);
  vertex(165,138);
  vertex(166,138);
  vertex(167,138);
  vertex(168,138);
  vertex(170,138);
  vertex(175,138);
  vertex(178,138);
  vertex(179,138);
  vertex(180,138);
  vertex(181,139);
  vertex(182,139);
  vertex(182,140);
  vertex(183,141);
  vertex(184,142);
  vertex(185,142);
  vertex(185,144);
  vertex(185,145);
  vertex(185,146);
  vertex(186,148);
  vertex(187,149);
  vertex(187,150);
  vertex(187,152);
  vertex(188,154);
  vertex(189,154);
  vertex(189,156);
  vertex(189,157);
  vertex(189,159);
  vertex(190,160);
  vertex(190,161);
  vertex(190,162);
  vertex(190,163);
  vertex(190,165);
  vertex(191,164);
  vertex(193,163);
  vertex(193,162);
  vertex(194,158);
  vertex(196,157);
  vertex(197,156);
  vertex(198,153);
  vertex(199,153);
  vertex(199,151);
  vertex(200,150);
  vertex(200,148);
  vertex(201,148);
  vertex(202,146);
  vertex(202,145);
  vertex(203,145);
  vertex(205,145);
  vertex(211,143);
  vertex(216,141);
  vertex(220,139);
  vertex(221,138);
  vertex(223,138);
  vertex(224,136);
  vertex(225,136);
  vertex(226,136);
  vertex(229,136);
  vertex(232,136);
  vertex(234,136);
  vertex(235,136);
  vertex(237,136);
  vertex(239,137);
  vertex(241,138);
  vertex(242,138);
  vertex(243,138);
  vertex(244,138);
  vertex(246,139);
  vertex(247,139);
  vertex(250,141);
  vertex(251,141);
  vertex(252,141);
  vertex(255,142);
  vertex(256,144);
  vertex(259,145);
  vertex(260,146);
  vertex(263,147);
  vertex(263,148);
  vertex(264,148);
  vertex(264,149);
  vertex(266,149);
  vertex(267,150);
  vertex(268,152);
  vertex(269,153);
  vertex(270,154);
  vertex(270,156);
  vertex(271,158);
  vertex(271,160);
  vertex(272,160);
  vertex(272,161);
  vertex(272,162);
  vertex(272,163);
  vertex(272,166);
  vertex(272,167);
  vertex(272,168);
  vertex(273,169);
  vertex(273,171);
  vertex(273,172);
  vertex(273,174);
  vertex(273,175);
  vertex(273,176);
  vertex(272,178);
  vertex(272,179);
  vertex(271,181);
  vertex(270,183);
  vertex(268,184);
  endShape();

}
