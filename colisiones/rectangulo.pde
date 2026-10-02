 boolean colision(Circulo c) {
    PVector PMC = new PVector(0, 0);

    if (c.CirculoPos.x < (pos.x - ancho/2)) {
      PMC.x = pos.x - ancho /2;
    } else if (c.CirculoPos.x > (pos.x + ancho / 2)){
      PMC.x = pos.x + ancho / 2; 
    } else {
      PMC.x = c.CirculoPos.x;
    }
    
    
    if (c.CirculoPos.y < (pos.y - alto / 2)) {
      PMC.y = pos.y - alto / 2;
    } else if (c.CirculoPos.y > (pos.y + alto / 2)) {
      PMC.y = pos.y + alto / 2;
    } else {
      PMC.y = c.CirculoPos.y;
    }
      float DistanciaX = c.CirculoPos.x - PMC.x;
    float DistanciaY = c.CirculoPos.y - PMC.y;
    float DistanciaCuadrada = (DistanciaX * DistanciaX) + (DistanciaY * DistanciaY);

    if (DistanciaCuadrada <= (c.radio * c.radio)) {
      return true;
    } else {
      return false;
    }
    }
  } 
