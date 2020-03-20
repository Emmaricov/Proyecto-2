class colisiones{
  PImage mandala;
  PImage mandalaEscalado;
 
  //box2D
  Body m;
  color colors;
  float radio;
  
 
  colisiones(float x, float y, float rad){  
     mandala = loadImage("photo.png");   
     mandalaEscalado = loadImage("photo.png");  
     mandalaEscalado.resize(150,125);
      
      radio = rad;
      colors = 255;
  //box2D
    //Declarar Body 
     BodyDef bd = new BodyDef(); 
     //Posicion
     Vec2 posicionInicial = new Vec2(x,y);
     Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);    
     bd.position.set(posicionEnEscalaBox2d);
     //Tipo de variable
     bd.type = BodyType.DYNAMIC;
     //Construir el objeto
     m = mundo.createBody(bd);    
   
     CircleShape cs = new CircleShape();
     
     FixtureDef fd = new FixtureDef();
     fd.shape = cs;
     fd.density = 1;
     fd.friction = 0.1;
     fd.restitution = 0.3;
     
     m.createFixture(fd);
     
     m.setUserData(this);
       
   }
   
   void sonido(){
     click.play();
     }
  
   
   void change() {
    colors = color(random(255), random(255),random(255));
    
     }
     

  
   void imagen(){
     Vec2 posicion = mundo.getBodyPixelCoord(m);
       
     float angulo = m.getAngle();
     pushMatrix();
     translate(posicion.x,posicion.y);
     rotate(angulo);
     fill(colors);
     imageMode(CENTER);
     tint(colors);
     image(mandalaEscalado,0,0);
     ellipse(CENTER,CENTER,radio,radio);
     popMatrix();
     }
 }
