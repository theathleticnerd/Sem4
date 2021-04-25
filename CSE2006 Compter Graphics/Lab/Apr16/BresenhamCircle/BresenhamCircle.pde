void setup()
{
size(400,400);
background(255);
}
Mld mld=new Mld();
void draw()
{
mld.mldg();
}
public class Mld
{
Mld(){};
void mldg()
{
int xc=200;int yc=200;
int r=50;
int x=0,y=r,d=3-(2*r);
point(x+xc,y+yc);
point(x+xc,-y+yc);
point(-x+xc,-y+yc);
point(-x+xc,y+yc);
point(y+xc,x+yc);
point(y+xc,-x+yc);
point(-y+xc,-x+yc);
point(-y+xc,x+yc);
while(x<=y)
{
if(d<=0)
{
d=d+(4*x)+6;
}
else
{
d=d+(4*x)-(4*y)+10;
y=y-1;
}
x=x+1;
point(x+xc,y+yc);
point(x+xc,-y+yc);
point(-x+xc,-y+yc);
point(-x+xc,y+yc);
point(y+xc,x+yc);
point(y+xc,-x+yc);
point(-y+xc,-x+yc);
point(-y+xc,x+yc);
} }}
