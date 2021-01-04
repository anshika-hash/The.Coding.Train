import processing.net.*;

import processing.video.*;

//PImage home;

Capture video;

void setup(){
 size(600,400);
// home = loadImage("p.jfif");

 video = new Capture(this,640,480,30);
 //video = loadCapture();
 video.start();
}


void mousePressed()
{
video.read();
}
void captureEvent(Capture video)
{
//video.read();
}

void draw(){
  
background(0);

image(video,0,0);
}
