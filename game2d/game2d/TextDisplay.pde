class TextDisplay {
  
  TextDisplay() {
  
  }  
    
    void displayDebug() {
   
      if (enableDebug == true) { //display the debug mode text if enabled
   
        textSize(16);
        text("Debug mode", width - 105, 20);
        text(p.playerJump, width - 55, 40);
        text(p.playerYMove, width - 55, 60);
        text(g.timeS, 10, 20);
        
        if (gameIsOver == true) {
         
          text("Game over", width - 105, 120);
          
        }
    
    }
    
    
    
  } 
  
  void displayInfo() {
     
    text(g.timeS, 10, 20);
      
  }
 
}