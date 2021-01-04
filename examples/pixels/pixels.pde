size(600,400);

background(255,0,255);

for(int i=0;i<=50;i++)
{
set(300,i,color(255,0,0));
}

//loadPixels();
//float col = random(0,255);
//for(int j=0;j<pixels.length;j++){
//pixels[j] = color(random(255),random(255),random(255));

//}
//updatePixels();

loadPixels();
for(int x=0;x<width;x++){
  for (int y=0;y<height;y++)
  {
 float d = dist(x,y,width/2,height/2);
 //pixels[x+y*width] = color(0,y/2,x/2);   
 pixels[x+y*width] = color(d);
  }
}
updatePixels();
