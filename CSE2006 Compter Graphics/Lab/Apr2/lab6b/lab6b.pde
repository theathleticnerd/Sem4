void setup()
{
size(1000,1000);
background(255);

}
void draw()
{
 
 int sx=5,sy=5;
 int tx=25;
 int ty=15;
 scaling_translation(sx,sy,tx,ty);
}


void scaling_translation(int sx,int sy,int tx,int ty)
{  
 int x1=10,x2=100,y1=70,y2=70;
 fill(93,50,10);
text("original",50,90);
line(x1,y1,x2,y2);
int x3=(x1*sx);
int y3=(y1*sy);
int x5=(x2*sx);
int y5=(y1*sy);
x3=x3+tx;
x5=x5+tx;
y3=y3+ty;
y5=y5+ty;
fill(120,200,10);
text("after scaling and translation",150,380);
line(x3,y3,x5,y5);
}
