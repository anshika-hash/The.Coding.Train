PImage img;
int w= 200;
float[][] matrix = {{-1,-1,-1},
                     {-1,9,-1},
                     {-1,-1,-1}};

void setup()
{
size(858,536);
PImage img = loadImage("p.jfif");
}


void draw()
{
  loadPixels();
  img.loadPixels();
  for(int x=0;x<width;x++)
  {
  for(int y=0;y<height;y++)
  {
  int loc = x+y*width;
  
  //.........................................
  //float r = red(img.pixels[loc]);
  //float g = green(img.pixels[loc]);
  //float b = blue(img.pixels[loc]);
  //float d = dist(width/2,height/2,x,y);
  //float factor = map(d,0,200,0,2);  
  //pixels[loc] = color(r+mouseX,g+mouseX,b+mouseX);
  
  //...............................................
  //float b = brightness(img.pixels[loc]);
  //if(b > 100)
  //{
   //pixels[loc ]= color(255);  
  //}
  //else
 // {
  //pixels[loc] = color(0);
  
  
//.....................................................  
 int loc1 = x + y* width;
 int loc2 = (x+1) + y* width;
 //float b1 = img.pixels[loc1];
 //float b2 = img.pixels[loc2];
 
 //float diff = abs(b1-b2);
 //pixels[loc1] = color(diff);
 //........................................................
 float b3 = brightness(img.pixels[loc1]);
 float b4= brightness(img.pixels[loc1]);
float diff = abs(b3-b4);
if(diff >20){
pixels[loc1] = color(0);
}
else
{
pixels[loc1] = color(255);
}
}

 }
//........................................................
//void draw()
//{
float x = random(width);
float y = random(height);
color c = img.get(int(x),int(y));
fill(c);
ellipse(x,y,16,16);
  //.............................................
//}
updatePixels();
}
