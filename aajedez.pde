int cant = 5;
int x;
int y;
int cuadradow;
int cuadradoh;
void setup() {
  size(600, 600);
  cuadradow = width / cant;
  cuadradoh = height / cant;
}

void draw() {
  for (int i = 0; i<cant; i++) {
      for (int j = 0; j<cant; j++){
         rect(x, y, cuadradow, cuadradoh);
         y = y + cuadradoh;
   }
   y = 0;
   x = x + cuadradow;
  }
}
