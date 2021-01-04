import processing.video.*;

Movie video;

void setup()
{
size(600,400);
video = new Movie(this,"transit.mov");
video.loop();
}

void movieEvent(Movie video)
{
video.read();
}

void draw()
{
image(video,0,0);

}
