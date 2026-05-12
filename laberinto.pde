int columnas = 10;
int filas = 10;
int tam = 40;
 
int[][] laberinto = new int[10][10];

void setup() {
  size(400, 400);
   
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      laberinto[i][j] = int(random(3)); 
    }
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float x = i * tam;
      float y = j * tam;
       
      if (laberinto[i][j] == 1) {
        line(x, y, x, y + tam);  
      } else if (laberinto[i][j] == 2) {
        line(x, y, x + tam, y + tam);  
      } 
    }
  }
}
