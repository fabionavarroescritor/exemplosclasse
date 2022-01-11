float t;

//nome da classe
class Bolita {

  //atributos da classe(variáveis
  float x, y, tam;
  color c;
  //construtor

  Bolita (float px, float py, float s, color cor) {

    x = px;
    y = py;
    tam = s;
    c = cor;
  }

  //métodos da classe

  void mostra() {

    fill(c);
    noStroke();
    ellipseMode(CENTER);    
    //strokeWeight(0.1);
    ellipse(x, y, tam, tam);
  }
}

void setup() {

  size(800, 600);
  smooth(8);
  background(255);
}

void draw() {

  for (int i=0; i<width; i++) {


    t += 0.00001;

    color corquad = color (127+sin(i*0.11+t)*127,
      127+sin(i*0.21+t)*127,
      127+sin(i*0.33+t)*127);

      Bolita b1 = new Bolita(width/2+sin(i*0.001+t)*220, height/2+cos(i*0.002+t)*220, 80, corquad);

    b1.mostra();
  }
  
  // if(frameCount == 2100){
  //exit();
  //}
  //saveFrame("salva/image####.png");
  
}
