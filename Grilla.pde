 int cols = 5;
int filas = 5;
int total = cols * filas;  

movil[] m = new movil[total];

void setup() {
  size(800, 600);
   
  int espacioX = width / (cols + 1);
  int espacioY = height / (filas + 1);
  
  int i = 0;
   
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
       
      int posX = espacioX * (x + 1);
      int posY = espacioY * (y + 1);
      
      m[i] = new movil(posX, posY); 
    }
  }
}

void draw() { 
  for (int i = 0; i < total; i++) {
    m[i].mover();
    m[i].mostrar();
  }
}
 
class movil {
  PVector pos;
  PVector vel = new PVector(random(-2, 2), random(-2, 2));
  
  movil(float x, float y) {
    pos = new PVector(x, y);
  }
  
  void mover() {
    pos.add(vel);
  }
  
  void mostrar() {
    circle(pos.x, pos.y, 10);
  }
}
