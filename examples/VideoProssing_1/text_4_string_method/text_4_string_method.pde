//String s = "To be or not to be.";
String[] words;

IntDict concordance;
void setup()
{

size(600,400);
background(0);
String[] lines = loadStrings("hamlet.txt");
String entireplay = join(lines," ");
println(entireplay);
//words = split(s, " "); //s=entireplay
words = splitTokens(entireplay,",./?';:]@#$%^&()_-+=`~[}{!");
//frameRate(5);
concordance = new IntDict();

for(int i=0;i<words.length;i++){
 // concordance.increment("Hello");
 // concordance.increment("goodbye");
 // concordance.increment("Hello");
  concordance.increment(words[i].toLowerCase());
 
}
concordance. sortValuesReverse();
 println(concordance);

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
String[] keys  = concordance.keyArray();
for(int i=0;i<keys.length;i++){
 int count = concordance.get(keys[i]);
 println(keys[i],count);
}
noLoop();
}
