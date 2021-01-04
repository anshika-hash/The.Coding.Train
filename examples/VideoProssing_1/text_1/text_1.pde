size(600,400);

background(0);

println(PFont.list());

PFont f = createFont("TrebuchetMS-Bold",64);
String s = "To be or not to be";

textFont(f);

textSize(64);

text(s,10,100);

float x = 10;
for(int i=0;i<s.length();i++)
{
char c = s.charAt(i);
text(c,x,300);
x = x+textWidth(c);
}
