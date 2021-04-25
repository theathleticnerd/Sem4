void setup(){
size(500,500);
}

int x1=100,y1=150,a=50,b=100,xc=250,yc=700;

void draw(){
  
  float x=0,y=b;
  float p;
  point(x1+xc/2, yc/2-y1);
  p=2*b*b+a*a*(1-2*b);
  while (y>0)
  {
    if(b*b*x<a*a*y)
    {
      if(p<=a*a/2)
         p+=2*b*b*(3+2*x);
       else
        { p+=2*b*b*(3+2*x)-4*a*a*(y-1);y--;}
         x++;
    }
    else
    {
       if (p<=b*b/2)
         p+=2*a*a+4*a*a*(y-1);
         else
        { p+=2*a*a+4*a*a*(y-1)-4*b*b*(x+1);x++;}
         y--;
    }
    point(x+xc/2+x1,y+yc/2-y1);
    point(-x+xc/2+x1 ,y+yc/2-y1);
    point(x+xc/2+x1,-y+yc/2-y1);
    point(-x+xc/2+x1,-y+yc/2-y1);
    
  }
  
}
