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

movil[] m = new movil[5]; 

void setup() {
  size(800, 600);
  for (int i = 0; i < 5; i++) { 
    m[i] = new movil(50 + i * 150
    , height/2); 
  }
}

void draw() { 
  for (int i = 0; i < 5; i++) {
    m[i].mover();
    m[i].mostrar();
  }
}
