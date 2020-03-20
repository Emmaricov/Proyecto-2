class mandala{
  PImage mandala;
  PImage mandalaEscalado;
  float r,g,b;
  //box2D
  Body m;
  
 
  mandala(float x, float y){  
    r = random(255);
    g = random(255);
    b = random(255);
  
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
        CircleShape cs = new CircleShape();
     FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    fd.density = 1;
    fd.friction = 0.1;
    fd.restitution = 0.3;
 
    m.createFixture(fd);
     
   }
   
   void imagen(){
     Vec2 posicion = mundo.getBodyPixelCoord(m);
  
   // m.setAngularVelocity(random(0, 10));
    //m.setGravityScale(radians(0));
    
    //m.setLinearVelocity(new Vec2(0, 0));
    m.setAngularVelocity(radians(700));
    
     float angulo = m.getAngle();
     pushMatrix();
     translate(posicion.x,posicion.y);
     tint(r,g,b);
     //frameRate(25);
     rotate(angulo);
     imageMode(CENTER);
     image(mandalaEscalado,0,0);
     popMatrix();
     }
 }
