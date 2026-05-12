int max = 10;
float[] posX = new float[max];
float[] posY = new float[max];
int i = 0; 
int circulo = 0; 
void setup() {
  size(800, 600);
}
       
void draw() {
  background(255);
     for (int i = 0; i < 10; i++) {
    fill(200, 150);
    circle(posX[i], posY[i], 50);
       }
}
     
void mousePressed() {
  posX[i] = mouseX;
  posY[i] = mouseY;
  i = (i + 1) % max;
  if (circulo < max) {
    circulo++;
       }
      }
   
