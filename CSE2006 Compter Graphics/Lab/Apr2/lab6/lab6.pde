void setup()
{
size(1000,1000);
background(255);
}
void draw()
{
 int sx=5,sy=5;
 float angle=45;
 scaling_rotation(sx,sy,angle);
}
void scaling_rotation(int sx,int sy,float angle)
{  
 int x1=10,x2=100,y1=70,y2=70;
 fill(93,50,10);
text("original",50,90);
line(x1,y1,x2,y2);
int x3=(x1*sx);
int y3=(y1*sy);
int x5=(x2*sx);
int y5=(y2*sy);
float ang=(angle*3.14)/180;
float x4=(((x5-x3)*cos(angle))-((y5-y3)+sin(angle)));
float y4=(((x5-x3)*sin(angle))-((y5-y3)+cos(angle)));
fill(93,50,10);
text("After scaling and rotating to 45",250,400);
line(x5,y5,x4,y4);
}
