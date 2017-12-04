class Menu {
  
  Menu() {
    
  }
  
  void mainMenu() {
    
    color hoverColour = #A0A0A0;
    
    while (isPlaying == false) {
    
      background(#00A0FF);
    
      fill(#FFFFFF);
      textSize(64);
      text("another", width/9, width/6);
      text("endless", width/9, width/4);
      text("runner", width/9, width/3);
    
      textSize(48);
      text("Play", width/8, (width/8)*7);
    
      textSize(12);
      text("by Newbyte", (width/8)*6, (width/8)*7);
      
      if ((mouseX > width/8) && (mouseX < (width/8)+50)) {
       
        
        
      }
    
    }
    
  }
  
}