void setup()
{
size(800,800);
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
int x_centre=400;int y_centre=400;
int r=150;
int x = r, y = 0;
point((x + x_centre),(y + y_centre));
if (r > 0) {
point((x + x_centre) ,(-y + y_centre));
point((y + x_centre),(x + y_centre));
point((-y + x_centre),(x + y_centre));
}
int P = 1 - r;
while (x > y) {
y++;
if (P <= 0)
P = P + 2 * y + 1;
else {
x--;
P = P + 2 * y - 2 * x + 1;
}
if (x < y)
break;
point((x + x_centre),(y + y_centre));
point((-x + x_centre),(y + y_centre));
point((x + x_centre),(-y + y_centre));
point((-x + x_centre),(-y + y_centre));
if (x != y) {
point((y + x_centre),(x + y_centre));
point((-y + x_centre),(x + y_centre));
point((y + x_centre),(-x + y_centre));
point((-y + x_centre),(-x + y_centre));
}
}
}
}
