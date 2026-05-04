int cant = 6;
int diametro;
int x; 

void setup() {
  size(600, 600);
  diametro = 40; 
  x = 0; 
}

void draw() {  
  for (int i = 1; i <= cant; i++) {
    int tam = i * diametro;  
    ellipse(x + tam / 2, height / 2, tam, tam); 
    x = x + tam; 
  }
   
}
