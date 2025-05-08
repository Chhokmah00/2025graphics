//12-6_sound
//要有聲音，需要聲音的Library
// Sketch -> Library -> Managed Libraries 找 sound
//會看到Sound | Provudes a simple way to work with audio -> Install
//安裝好Sound後，會有File->Examples 點開 Libraries核心函式庫Sound
//Soundfile那堆範例 看 SimplePlayback簡單播放音樂的範例
import processing.sound.*;
SoundFile mySound;
void setup(){
   size(400,400);
   mySound=new SoundFile(this,"music.mp3");
   mySound.play();
}
void draw(){
  
}
