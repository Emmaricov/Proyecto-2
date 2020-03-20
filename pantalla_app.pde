class app{
   
   //LETRAS
      PFont fuente1;
      PFont fuente2;
      PFont fuente3;
      PFont fuente4;
      
  //RECTANGULO
  float x,y;
  float ancho, alto;
  float r;
  float r0,g0,b0;
  
  //RECTANGULOS CHICOS COLORES
  float x1,y1;
  float x2,y2;
  float ancho1, alto1;
  float r2;
  
  //RECTANGULOS GRISES
  float x3,y3;
  float x4,y4;
  float ancho0, alto0;
  float r1;
  float r3,g3,b3;
  
  //TRAPECIO CHIQUITO DE ATRAS
  float x_1 ,y_1 ;
  float x_2 ,y_2;
  float x_3 ,y_3 ;
  float x_4 ,y_4 ;
  //Mandala
  ArrayList <colisiones> colisiones;
  mandalaMouse mandalaMouse;
  Spring spring;
  
  app(){
    
  //COLOR RECTANGULO GFRANDE  
    r0 = 6;
    g0 = 139;
    b0 = 207;

//RECTANGULOS JOVENES GRISES  
    
    //color gris
    r3 = 201;
    g3 = 213;
    b3 = 231;
    
//TRAPECIO CHIQUITO DE ATRAS
    x_1 = 325;
    y_1 =  0;
    x_2 = 430;
    y_2 = 0;
    x_3 = 460;
    y_3 = 40;
    x_4 = 305;
    y_4 = 40;
    
    
 //mandalas
    colisiones = new ArrayList <colisiones>();
   mandalaMouse = new mandalaMouse(width/2,height/2);
    spring = new Spring();
    spring.bind(width/2,height/2,mandalaMouse);
    
    //Letras Titulo
  fuente1 = loadFont("Counter-StrikeExtruded-80.vlw");
  fuente2 = loadFont("Counter-StrikeRegular-80.vlw");
  //Letras instrucciones
  fuente3 = loadFont("EPSON_太丸ゴシック体Ｂ-80.vlw");
  fuente4 = loadFont("EPSON_丸ゴシック体Ｍ-80.vlw");
    }
    
  void display(){
    
    background(0);
      
 //box2D   
      if (random (9)<0.1){
         float xC = (random(100,700));
         float yC = 0;
         float rad=0;
    
         colisiones.add(new colisiones (xC,yC,rad));
         }
  
      for (int i = colisiones.size()-1; i >= 0; i--) {
        colisiones c = colisiones.get(i);
        c.imagen();
        
      spring.update(mouseX,mouseY);
      spring.display();
      //mandalaMouse.imagen(); 
             
        }
    
   
     //RECTANGULO GRANDE
      fill(r0,g0,b0);
      noStroke();
      rect(0,0, 750, 50, 10); 
      ellipse(377,30, 130, 130);
      
     //RECTANGULO ARRIBA GRISS  
      fill(r3,g3,b3);
      quad(x_1,y_1, x_2,y_2, x_3,y_3, x_4,y_4);  
      
   //RECTANGULO GRISSSSS
      fill(r3,g3,b3);
      rect(-15,10, 340, 38, 10);
      rect(430,10, 340, 38, 10); 
  
  
      
   //RECTANGULOS
   
      frameRate(12);
      fill(random(255),random(255),random(255));
      rect(-10,18, 327, 23, 10);
      rect(440,18, 327, 23, 10);
     
      
  //Make it sound
      textFont(fuente1);
     // fill(r2,g2,b2);
      textSize(20);
      text("MAKE IT",337,20);
      text("SOUND",340,35);
      
      textFont(fuente2);
      fill(0);
      textSize(20);
      text("MAKE IT",337,20);
      text("SOUND",340,35);
      
      
    }
  }
  
  void beginContact(Contact cp) {
    
     Fixture f1 = cp.getFixtureA();
     Fixture f2 = cp.getFixtureB();
  
     Body b1 = f1.getBody();
     Body b2 = f2.getBody();
  
     Object o1 = b1.getUserData();
     Object o2 = b2.getUserData();
  
       if (o1.getClass() == mandalaMouse.class) {
           colisiones m = (colisiones) o2;
           m.change();
           //m.sonido();
           click.play();
           } 
           else if (o2.getClass() == mandalaMouse.class) {
                colisiones m = (colisiones) o1;
                m.change();
                }
         }

void endContact(Contact cp) {
}
