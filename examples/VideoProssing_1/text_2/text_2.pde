size(600,400);

background(0);
String s = "100,320,60,70,4105,50,40,23";

String[] nums  = split(s,",");

int[] vals = int (nums);

for(int i=0;i< nums.length;i++)
{
ellipse(i*50,200,vals[i],vals[i]);
}
