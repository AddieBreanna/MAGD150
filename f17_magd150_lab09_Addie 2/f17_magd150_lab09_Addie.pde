//"Music: www.bensound.com" https://www.bensound.com/royalty-free-music/track/tomorrow
//https://processing.org/reference/filter_.html


//variables for the video, image, and sound
import processing.sound.*;
import processing.video.*;
PImage Tokyo;

Capture tvimage;
SoundFile music;


void captureEvent(Capture tvimage){
  tvimage.read();
}

void setup(){
 size (2000,1000);
  
//Setup for the video 
tvimage=new Capture(this,320,240);
tvimage.start();

//Setup for the background image
Tokyo= loadImage("Tokyo.jpg");


//Setup for the sound
music=new SoundFile(this,"music.mp3");
music.play();
music.amp(1);
  
}

void draw(){
  //The image location fit to match size parameters. 
  //Also,random note, this image is from my study abroad. 
  image(Tokyo,0,0,width,height); 
  filter(ERODE);
  
  //This sets the video location and displays the camera feed. 
  image(tvimage,800,280);
  

 
}