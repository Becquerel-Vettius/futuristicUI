
ArrayList<Popup> pList = new ArrayList<Popup>();

class Popup{
  
  PVector pos = new PVector(0,0);
  
  float high;
  float wide;
  
  color baseCol = #61C4C1;
  color markedCol = #26C4C0;
  color textCol = #004D4B;

  
  float cornerThick = 12;
  float StartCornerOffset = 20;
  float cornerOffset = StartCornerOffset;
  
  String words = "blank as of now";
  

  
  //rectangular constructor
  Popup(float px, float py, float w,float h,String t){

    words = t;
    pos.x = px;
    pos.y = py;
    wide = w;
    high = h;
  }
  

 
 boolean checkHover(){
   boolean bool = false;
   
   if ((mouseX > pos.x && mouseX < pos.x+wide      &&     mouseY > pos.y  && mouseY < pos.y+high)){
     bool = true;
   }
   return bool;
 } //checkHover end
 
 boolean checkClick(){
   boolean bool = false;
   
   if (mousePressed&& (mouseX > pos.x && mouseX < pos.x+wide      &&     mouseY > pos.y  && mouseY < pos.y+high)){
     bool = true;
   }
   
   return bool;
 } //checkClick end
  
  
  
  
  
  
  
  
 void renderFrame(){
   pushMatrix();
   translate(pos.x,pos.y);
   
   strokeWeight(3);
   
   
   if (checkHover()){
     fill(markedCol);
     stroke(255);
   } else { 
     fill(baseCol);
     stroke(255);
   }
   
   rect(0,0,wide,high);
   
   float cornerLength = 20+(high/4);
   
   

  
   if (checkHover() && cornerOffset >= cornerThick){
     cornerOffset--;

   } else if (checkHover() == false && cornerOffset <= StartCornerOffset) {
     cornerOffset++;

   }

   
   rect(-cornerOffset, -cornerOffset,   cornerLength , cornerThick);
   rect(-cornerOffset, -cornerOffset,   cornerThick , cornerLength);
   
   rect(cornerOffset+wide, -cornerOffset,   -cornerLength , cornerThick);
   rect(cornerOffset+wide, -cornerOffset,   -cornerThick , cornerLength);
   
   rect(-cornerOffset, cornerOffset+high,   cornerLength , -cornerThick);
   rect(-cornerOffset, cornerOffset+high,   cornerThick , -cornerLength);
   
   rect(cornerOffset+wide, cornerOffset+high,   -cornerLength , -cornerThick);
   rect(cornerOffset+wide, cornerOffset+high,   -cornerThick , -cornerLength);
   
   
   popMatrix();
   
   
 } // end of renderFrame
 
 
 
 void renderText(){
   pushMatrix();
   
   translate(pos.x,pos.y);
   textSize(30);
   
   fill(255);
   stroke(255);

   textAlign(CENTER,CENTER);
   
   if (high>20){
     text(words, 20,10, wide-40, high-20);
   }
   
   
   popMatrix();
 } //render text end
 
 
 
 
 
 int fadeTicks = 0;
 boolean fading = false;
 
 void fade(ArrayList list){
   if (fading || checkClick() ){
   
     fading = true;
     high=high-(high/15);
     pos.y=pos.y+(high/30);
 
   
     fadeTicks++;
     if(fadeTicks == 60){
        list.remove(this);
   } }
 } //fade end
  
  
  
  
  
  
  
  
  
  void createThree(){

    
    
    
  }
  
  
  
} //class end
