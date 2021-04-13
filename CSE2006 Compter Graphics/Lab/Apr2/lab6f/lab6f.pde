void setup()
{
size(1000,1000);
background(255);

}
void draw()
{
  float sx=3,sy=3;
 float tx=50,ty=70;
 float angle=45;
rotation_trans_scaling(tx,ty,sx,sy,angle);
 }

void rotation_trans_scaling(float tx,float ty,float sx,float sy,float angle)
{  
 float x1=10,x2=100,y1=70,y2=70;
 fill(93,50,10);
text("original",50,90);
line(x1,y1,x2,y2);
float ang=(angle*3.14)/180;
float x4=(((x2-x1)*cos(angle))-((y2-y1)+sin(angle)));
float y4=(((x2-x1)*sin(angle))-((y2-y1)+cos(angle)));

float x3=(x2+tx);
float x5=(x4+tx);
float y3=(y2+ty);
float y5=(y4+ty);

x3=x3*sx;
x5=x5*sx;
y3=y3*sy;
y5=y5*sy;
fill(233,100,10);
text("After rotating to 45,translating and scaling",250,460);
line(x3,y3,x5,y5);
}
