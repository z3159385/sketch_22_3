int x = 20; // X-coordinate
int u = 14; // Units
int n = 5;
float a = -0.12; // Angle
void setup() {
size(500, 500);
stroke(0, 153);
smooth();
noLoop();
}
void draw() {
background(204);
tail(x, u, a, n);
}
void tail(int xpos, int units, float angle, int num) {
translate(xpos, 50);
for (int i = units; i > 0; i--) { // Count in reverse
strokeWeight(i);
line(x, 30, x, 70);
translate(0, 10);
rotate(angle);
if(num > 1){
 num = num -1;
  tail (xpos, units, angle,num); 
}
}
}
