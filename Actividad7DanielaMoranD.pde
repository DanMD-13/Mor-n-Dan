PImage textura; //esta imagen va sobre el modelo
PImage textura2;
PImage textura3;
PImage textura4;
PImage fondo;
PImage fondo2;
PShape soporte; //modelo
PShape soportecat;
PShape soportefish;
PShape soportedog;
float angulo = 0;

void setup() {
  size(1280, 800, P3D);
  textura = loadImage("10014_dolphin_v1_Diffuse.jpg");
  textura2 = loadImage("Cat_diffuse.jpg");
  textura3 = loadImage("fish.jpg");
  textura4 = loadImage("Australian_Cattle_Dog_dif.jpg");
  fondo = loadImage("31945.jpg");
  fondo2 = loadImage("summer_field_in_the_morning-wallpaper-1280x800.jpg");
  soporte = loadShape("10014_dolphin_v2_max2011_it2.obj");
  soportecat = loadShape("12221_Cat_v1_l3.obj");
  soportefish = loadShape("12265_Fish_v1_L2.obj");
  soportedog = loadShape("13463_Australian_Cattle_Dog_v3.obj");
  //soporte.setTexture(textura);
  //soporte.setStroke(false); //el archivo mesh ya no tiene contorno por lo que no se utiliza
  // si usas la textura que tiene prederminado el modelo, no es necesario agregar las texturas:
  //soportecat.setTexture(textura2); // Si no haces modificaciones en las texturas de los modelos, recomiendo configurarlos desde setup.
  //soportefish.setTexture(textura3); // Si no haces modificaciones en las texturas de los modelos, recomiendo configurarlos desde setup.
  //soportedog.setTexture(textura4);// Si no haces modificaciones en las texturas de los modelos, recomiendo configurarlos desde setup.
  soporte.scale(2);
  soportecat.scale(7);
  soportefish.scale(3);
  soportedog.scale(14);
  surface.setTitle("algo");
}

void draw() {
  switch (key) { //usamos una sola estructura switch para -en este caso- las teclas
  case '1':
   background(fondo);
    push();
    delfidan();
   fishdan();
    pop();
    break;
    
  case '2':
    background(fondo2);
    push();
    dogdan();
    translate(300, 600);
    rotateY(radians(90));
    rotateX(radians(90));
    rotateZ(angulo);
    //soportecat.setTexture(textura2); // Si no haces modificaciones en las texturas de los modelos, recomiendo configurarlos desde setup.
    shape(soportecat);
    pop();
    break;
    
  default:
    push();
    background(fondo2);
    dogdan();
    pop();
    break;
  }
//Si todos los modelos giran con el mismo ángulo, se puede hacer esta operación una sola vez, por ejemplo, aquí
  angulo = angulo + 0.01;

}
void delfidan() {  
 // background(fondo);
  push();
  translate(width/2, 600);
  rotateY(radians(90));
  rotateX(radians(90));
  rotateZ(angulo);
  //antes de dibujar la forma, damos características y ubicación 
  // si no haces ninguna modificación de la textura, puedes poner dentro setup()
  //soporte.setTexture(textura); 
  shape(soporte);
  pop();
  // Si todos los modelos giran con el mismo ángulo, se puede hacer esta operación una sola vez, por ejemplo, dentro de draw()
  //angulo = angulo + 0.01;
}
void dogdan() {
  push();
  translate(800, 600);
  rotateY(radians(90));
  rotateX(radians(90));
  rotateZ(angulo);
  //soporte.setTexture(textura4); //<--- estabas poniendo el mismo soporte del delfin en el perro 
  //soportedog.setTexture(textura4);
  shape(soportedog);
  pop();
  //angulo = angulo + 0.01;
}
void fishdan() {
  push();
  translate(640, 200);
  rotateY(radians(0));
  rotateX(radians(90));
  rotateZ(angulo);
  //soporte.setTexture(textura3); //<--- estabas poniendo el mismo soporte del delfin en el pez 
  //soportefish.setTexture(textura3); // si no haces ninguna modificación de la textura, puedes poner dentro setup()
  shape(soportefish);
  pop();
  //angulo = angulo + 0.01;
}
