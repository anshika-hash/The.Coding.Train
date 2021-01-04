import processing.video.*;

Capture video;
int x=0;

void setup()
{
size(1200,480);
video = new Capture(this,640,480);
video.start();
}
void CaptureEvent(Capture video)
{
video.read();
} 

void draw()
{
//image(video,0,0);

int w = video.width;
int h = video.height;
copy(video,w/2,0,1,h,x,0,1,h);
x = x+1;
if(x> width)
{
x=0;
}
}

//Copy function 
//argu  1: image,video that you want to copy.
// 2: height and width x and y. # from where you are taking video and image.
//  3: height and width x and y.  # In which you will take video and image.
