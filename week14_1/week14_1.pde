//week14-1

size(300,300);
textSize(50);
text("hello",10,50);
PFont font=createFont("Times New Roman",50);
textFont(font);
text("hello",10,100);
//print(PFont.list()); 列出現在所有可用的字型
for(String name : PFont.list()) println(name);
