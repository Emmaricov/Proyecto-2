class instrucciones{
  ArrayList <mandala> mandalas;

  //LETRAS
      PFont fuente1;
      PFont fuente2;
      PFont fuente3;
      PFont fuente4;
  //COLOR
     float r,g,b;
     float r1,g1,b1;
     float r2,g2,b2;
     float r3,g3,b3;
     float r4,g4,b4;
     float r5,g5,b5;
 //RECTANGULOS    
     float x, y;
     float x1, y1;
     
     float x2, y2;
     float x3, y3;
     
     float x4, y4;
     float x5, y5;
     
     float x6, y6;
     float x7, y7;
     
     float x8, y8;
     float x9, y9;
     
     float x10, y10;
     float x11, y11;
     
  instrucciones(){
     mandalas = new ArrayList <mandala>();
  //Letras Titulo
  fuente1 = loadFont("Counter-StrikeExtruded-80.vlw");
  fuente2 = loadFont("Counter-StrikeRegular-80.vlw");
  //Letras instrucciones
  fuente3 = loadFont("EPSON_太丸ゴシック体Ｂ-80.vlw");
  fuente4 = loadFont("EPSON_丸ゴシック体Ｍ-80.vlw");
  
  
 //RECTANGULOS   
    x = 0;
    y = 150;
    x1 = 750;
    y1 = 50;
    
    x2 = 0;
    y2 = 230;
    x3 = 750;
    y3 = 40;
    
    x4 = 0;
    y4 = 280;
    x5 = 750;
    y5 = 90;
    
    x6 = 0;
    y6 = 390;
    x7 = 750;
    y7 = 10;
    
    x8 = 0;
    y8 = 410;
    x9 = 750;
    y9 = 7;
    
    x10 = 0;
    y10 = 480;
    x11 = 750;
    y11 = 20;
    
//Color
    r = 0;
    g = 21;
    b = 97;
    
    r1 = 176;
    g1 = 222;
    b1 = 0;
    
    r2 = 18;
    g2 = 103;
    b2 = 0;
    
    r3 = 0;
    g3 = 90;
    b3 = 156;
    
    r4 = 226;
    g4 = 231;
    b4 = 23;
    
    r5 = 61;
    g5 = 8;
    b5 = 111;
    }
  
  void display(){
 //rectangulos
      background(0,0,94);
      noStroke();
      fill(r, g, b);
      rect(x,y, x1,y1);
      rect(x2,y2, x3,y3);
      rect(x4,y4, x5,y5);
      rect(x6,y6, x7,y7);
      rect(x8,y8, x9,y9);
      rect(x10,y10, x11,y11);
 //TITULO INSTRUCCIOnES
      textFont(fuente1);
      fill(r2,g2,b2);
      textSize(50);
      text("INSTRUCTIONS",40,100); 
      
      textFont(fuente2);
      fill(r1,g1,b1);
      textSize(50);
      text("INSTRUCTIONS",40,100); 
      
//LETRAS SOBRE LAS INSTRUCIONES
    //azul
      textFont(fuente3);
      fill(r3,g3,b3);
      textSize(25);
      text("Touch the mandalas with the mouse",40,185);
      text("and hit mandalas that appear",40,220);
      text("randomly on the screen.", 40,255);
      
      text("When both objects collided they",40,325);
      text("will change color while the music",40,360);
      text("is playing. Press tab to return",40, 395);
    //amarillo
      textFont(fuente4);
      fill(r4,g4,b4);
      textSize(25);
      text("Touch the mandalas with the mouse",38,185);
      text("and hit mandalas that appear",38,220);
      text("randomly on the screen.",38,255);
      
      text("When both objects collided they",38,325);
      text("will change color while the music",38,360);
      text("is playing. Press tab to return",38, 395);
      
      
  //TEXT TO CONTINUE 
     //dark
      textFont(fuente3);
      fill(r5,g5,b5);
      textSize(15);
      text("Click to continue...",40,550);
     //white
      textFont(fuente4);
      fill(255);
      textSize(15);
      text("Click to continue...",38,550);
   
      
      if (random (10)<0.1){
        float x_1 = random(490, 600);
       mandalas.add(new mandala (x_1,-20));
       }
  
       for (int i = mandalas.size()-1; i >= 0; i--) {
        mandala p = mandalas.get(i);
        p.imagen();
        }
    
        
    }
   }
