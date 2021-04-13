void setup()
{
size(1000,1000);
background(255);

}
void draw()
{
 
 int sx=3,sy=3;
 int tx=150,ty=120;
 float angle=45;
scaling_rotation_trans(tx,ty,sx,sy,angle);
 
}
void scaling_rotation_trans(int tx,int ty,int sx,int sy,float angle)
{  
 int x1=10,x2=100,y1=70,y2=70;
 fill(93,50,10);
text("original",50,90);
line(x1,y1,x2,y2);
int x3=(x1*sx);
int x5=(x2*sx);
int y3=(y1*sy);
int y5=(y2*sy);
float ang=(angle*3.14)/180;
float x4=(((x5-x3)*cos(angle))-((y5-y3)+sin(angle)));
float y4=(((x5-x3)*sin(angle))-((y5-y3)+cos(angle)));
x5=x5+tx;
x4=x4+tx;
y5=y5+ty;
y4=y4+tx;
fill(233,100,10);
text("After translating,scaling and rotating to 45",250,420);
line(x5,y5,x4,y4);
}
