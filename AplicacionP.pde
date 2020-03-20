//MUSICA
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer intro;
AudioPlayer click;



//Box2d
import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing mundo;

//VARIABLES
int pantalla=1;

//Cambios
pantallaInicio pantalla1;
instrucciones pantalla2;
app pantalla3;


//OBJETOS EN BOX2D


void setup(){
  size(750,600);
//BOX2D  
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
  
//MUSICA
  minim = new Minim(this);
  player = minim.loadFile("iniciopantalla.mp3");
  player2 = minim.loadFile("instrucciones.mp3");
  intro = minim.loadFile("fondp.mp3");
  click = minim.loadFile("click.mp3");
  
  
//PANTALLAS
  pantalla1 = new pantallaInicio();
  pantalla2 = new instrucciones();
  pantalla3 = new app();
  
  
//colisiones box2d 
  mundo.listenForCollisions();
  
//tiempo
 
  }
  
void draw(){
  mundo.step();
  switch(pantalla){
    
    case 1:
        player.play();
         pantalla1.display();
    
           if(mousePressed==true){
             pantalla++;
             player.close();
              mousePressed=false;
           }
    break;
    
    case 2:
           player2.play();
           
             pantalla2.display();
           
            if(mousePressed==true){
             pantalla++;
             player2.close();
              mousePressed=false;
            }
     break;
     
     case 3:
          intro.play();
           pantalla3.display();
           if(key==' ' && keyPressed)
            {
            pantalla=1;
           intro.close();
            keyPressed=false;
          }
         
         
          
            
             
            
     break;
     
   }
}    
   
    

  
  
