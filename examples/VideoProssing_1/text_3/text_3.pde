String s = "To be or not to be.";
String[] words;
int index=0;
void setup()
{

size(600,400);
background(0);
String[] lines = loadStrings("hamlet.txt");
String entireplay = join(lines," ");
println(entireplay);
//words = split(s, " "); //s=entireplay
words = splitTokens(entireplay,",./?';:]@#$%^&()_-+=`~[}{!");
frameRate(5);
}
void draw()
{
/*
  for(int i=0;i<words.length;i++)
{
fill(255,127);
stroke(255);
textSize(32);
text(words[i],50+i*100,200);
}*/
background(0);
fill(255);
textSize(64);
textAlign(CENTER);
text(words[index],width/2,height/2);
index++;
}
