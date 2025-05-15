//week13-1_video
import processing.video.*;

//Capture video;
Movie movie;
void setup(){
 size(640,480);
 //video=new Capture(this,640,480);
 movie=new Movie(this,"street.mov");
 movie.loop();
 //video.start();
}
void draw(){
 if(movie.available()) movie.read();
 image(movie,0,0);
 //if(video.available()) video.read();
 //image(video,0,0);
}
