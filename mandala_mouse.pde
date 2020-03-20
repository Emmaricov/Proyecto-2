class mandalaMouse{
  PImage mandala;
  PImage mandalaEscalado;
  
  float r,g,b;
  float r1,g1,b1;
  //box2D
  Body m;
  float w;
  float h;
 
  mandalaMouse(float x1, float y1){
    float x = x1;
    float y = y1;
     w = 50;
     h = 50;
     
    r = 238;
    g = 248;
    b = 240;
   
    r1 = random(255);
    g1 = random(255);
    b1 = random(255);
    
     mandala = loadImage("photo.png");   
     mandalaEscalado = loadImage("photo.png");  
     mandalaEscalado.resize(150,125);
      
      
      //box2D
       BodyDef bd = new BodyDef();   
       Vec2 posicionInicial = new Vec2(x,y);
       Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);
       bd.position.set(posicionEnEscalaBox2d);
        
       bd.type = BodyType.DYNAMIC;
       m = mundo.createBody(bd);
       
       
       
      PolygonShape sd = new PolygonShape();
    float box2dW = mundo.scalarPixelsToWorld(w/2);
    float box2dH = mundo.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW, box2dH);

   
      FixtureDef fd = new FixtureDef();
      fd.shape = sd;
    
      fd.density = 1;
      fd.friction = 0.3;
      fd.restitution = 0.5;
 
      m.createFixture(fd);
   
     m.setUserData(this);
   }
   

   void imagen(){
     Vec2 posicion = mundo.getBodyPixelCoord(m);
  
   // m.setAngularVelocity(random(0, 10));
    m.setGravityScale(radians(0));
    
   
     float angulo = m.getAngle();
     
     rectMode(PConstants.CENTER);
     pushMatrix();
     translate(posicion.x,posicion.y);
     fill(0);
     rotate(angulo);
     tint(r,g,b);
    imageMode(CENTER);
    image(mandalaEscalado,CENTER,CENTER);
   
     //rect(0,0, w, h);
     //ellipse(CENTER,CENTER,radio,radio);
     popMatrix();
     }
 }
