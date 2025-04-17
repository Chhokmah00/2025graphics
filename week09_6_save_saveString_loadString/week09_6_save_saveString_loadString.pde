//week09-6_save_saveString_loadString
void setup(){
  size(300,300);
  rect(10,10,80,80);
  rect(110,110,80,80);
  save("file.png"); //可把某個畫面存檔
  another = loadStrings("lines.txt"); //如果讀到了，就有陣列
}
int x=10,y=10,ID=0;
void draw(){
   background(204);
   rect(x,y,80,80);
   if(another != null){
      int[] now=int(split(another[ID],' ')); 
      rect(now[0],now[1],80,80);
      ID=(ID+1)%another.length;
   }
}
void mouseDragged(){
   x += mouseX - pmouseX;
   y += mouseY - pmouseY;
   String now = x + " " + y; //現在座標的字串
   lines.add(now); //印出來
}
ArrayList<String> lines = new ArrayList<String>(); //ArrayList資料結構
String [] another; //另外一個讀到的字串資料(一開始沒有東西)
void keyPressed(){
    String [] arr = new String[lines.size()]; //傳統Java陣列的資料結構
    lines.toArray(arr); //把ArrayLis轉換成傳統的陣列，以便存檔
    if(key=='s') saveStrings("lines.txt",arr); //按下英文小寫s會存檔
}
