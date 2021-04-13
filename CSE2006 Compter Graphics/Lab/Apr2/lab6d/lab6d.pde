void setup()
{
size(1000,1000);
background(255);

}
void draw()
{
 
 int sx=3,sy=3;
 int tx=50,ty=60;
 float angle=45;
trans_scaling_rotation(tx,ty,sx,sy,angle);
 
}


void trans_scaling_rotation(int tx,int ty,int sx,int sy,float angle)
{  
 int x1=10,x2=100,y1=70,y2=70;
 fill(93,50,10);
text("original",50,90);
line(x1,y1,x2,y2);
int x3=x1+tx;
int x5=x2+tx;
int y3=y1+ty;
int y5=y2+ty;

x3=(x3*sx);
y3=(y3*sy);
x5=(x5*sx);
y5=(y5*sy);

float ang=(angle*3.14)/180;
float x4=(((x5-x3)*cos(angle))-((y5-y3)+sin(angle)));
float y4=(((x5-x3)*sin(angle))-((y5-y3)+cos(angle)));
fill(233,100,10);
text("After translating,scaling and rotating to 45",250,420);
line(x5,y5,x4,y4);
}
