void setup()
{
size(1000,1000);
background(255);

}
void draw()
{
 
 int tx=35,ty=100;
 float angle=45;
 scaling_rotation(tx,ty,angle);
 
}


void scaling_rotation(int tx,int ty,float angle)
{  
 int x1=10,x2=100,y1=70,y2=70;
 fill(13,230,56);
text("original",50,90);
line(x1,y1,x2,y2);
int x3=x1+tx;
int x5=x2+tx;
int y3=y1+ty;
int y5=y2+ty;
float ang=(angle*3.14)/180;
float x4=(((x5-x3)*cos(angle))-((y5-y3)+sin(angle)));
float y4=(((x5-x3)*sin(angle))-((y5-y3)+cos(angle)));
fill(240,90,10);
text("After translating and rotating to 45",100,190);
line(x5,y5,x4+20,y4+20);

}
