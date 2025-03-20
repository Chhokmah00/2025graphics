//week05-5
//比較 rotate & translate 的順序
void setup(){
   size(400,400); 
}
void draw(){
   background(204);
   //做測試，把下面幾行對調順序
   //會發現: 畫東西之前 translate()才有效果
   //在電腦圖學中，畫圖時會照著之前「累積的移動、旋轉」來放東西
   rotate(radians(frameCount)*5); //1秒有60個frame，轉60度，要變radians單位
   translate(mouseX,mouseY); //移動到mouse所在位置
   rect(-50,-5,100,10); //寬度100的棒子，放在左上角
}
