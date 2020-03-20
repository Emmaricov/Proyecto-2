class Spring { 
  
  MouseJoint mouseJoint;

  Spring() {
    mouseJoint = null;
  }
  
   void update(float x, float y) {
    if (mouseJoint != null) {
      Vec2 mouseWorld = mundo.coordPixelsToWorld(x,y);
      mouseJoint.setTarget(mouseWorld);
    }
  }

 

  void display() {
    if (mouseJoint != null) {
      Vec2 v1 = new Vec2(0,0);
      mouseJoint.getAnchorA(v1);
      
      Vec2 v2 = new Vec2(0,0);
      mouseJoint.getAnchorB(v2);
      
      v1 = mundo.coordWorldToPixels(v1);
      v2 = mundo.coordWorldToPixels(v2);
      
      
    }
  }


  
  void bind(float x, float y, mandalaMouse  mandalaMouse){
   
    MouseJointDef md = new MouseJointDef();
    
   
    md.bodyA = mundo.getGroundBody();
    md.bodyB = mandalaMouse.m;
    Vec2 mp = mundo.coordPixelsToWorld(x,y);
    md.target.set(mp);
    md.maxForce = 1000.0 * mandalaMouse.m.m_mass;
    md.frequencyHz = 5.0;

    mouseJoint = (MouseJoint) mundo.world.createJoint(md);
  }

  void destroy() {

    if (mouseJoint != null) {
      mundo.world.destroyJoint(mouseJoint);
      mouseJoint = null;
    }
  }

}
