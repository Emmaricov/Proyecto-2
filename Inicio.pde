class pantallaInicio{
  
   //Letras para logo
        PFont fuente1;
        PFont fuente2;
   //Letras instrucciones
        PFont fuente3;
        PFont fuente4;
   
    
  pantallaInicio(){
   //Letras para logo
        fuente1 = loadFont("Counter-StrikeExtruded-80.vlw");
        fuente2 = loadFont("Counter-StrikeRegular-80.vlw");
   //Letras instrucciones
        fuente3 = loadFont("EPSON_太丸ゴシック体Ｂ-80.vlw");
        fuente4 = loadFont("EPSON_丸ゴシック体Ｍ-80.vlw");
    }
    
    
    void display(){
    //colo de fondo 
      background(8,120,184);
      
      
    //lineas azulclaro 
       stroke(45, 182, 224);
         for(int i=0; i<=750; i+=15){
           for(int j=0; j<=600; j+=20){
           line(i,j, 375, 300);
           }
         }
         
           stroke(3,101,162);
         for(int i=0; i<=750; i+=100){
           for(int j=0; j<=750; j+=50){
           line(i,j, 375, 300);
              }
             }
           
    //circulo    
      noStroke();      
      fill(3,101,162);
      circle(375,300, 250);
//TEXTO LOGO TEXTO LOG TEXTO LOGO      
//text white?     
    //Text C 
      textFont(fuente1);
      fill(176, 249, 255);
      textSize(195);
      text("C",181,272);      
    //Text D
      textSize(114);
      text("Don",329,278);
   //Text Dan 
      textSize(175);
      text("D",231,377);
   //Text an
      textSize(114);
      text("an",366,332);
            
         
//text yellow     
    //Text C 
      textFont(fuente1);
      fill(217, 246, 128);
      textSize(192);
      text("C",183,272);      
    //Text D
      textSize(112);
      text("Don",329,279);
   //Text Dan 
      textSize(173);
      text("D",233,376);
   //Text an
      textSize(112);
      text("an",366,331);
      
      
//Fuente1 atras negra      
    //Text C 
      textFont(fuente1);
      fill(0);
      textSize(190);
      text("C",185,273);      
    //Text D
      textSize(110);
      text("Don",330,280);
   //Text Dan 
      textSize(170);
      text("D",235,374);
   //Text an
      textSize(110);
      text("an",365,330);
      
//Fuente2 color 
    //Text C 
      textFont(fuente2);
      fill(4,57,235);
      textSize(190);
      text("C",185,273);      
    //Text D
      textSize(110);
      text("Don",330,280);
   //Text Dan 
      textSize(170);
      text("D",235,374);
   //Text an
      textSize(110);
      text("an",365,330);  
      
      
//TEXTO INSTRUCCIONES TEXTO INSTRUCCIONES
   //moradito  
     textFont(fuente3);
     fill(54, 38, 77);
     textSize(25);
     text("Click to continue",260,460);   
   //click
     textFont(fuente4);
     fill(random(150,255));
     textSize(25);
     text("Click to continue",258,460); 

  }
}  
