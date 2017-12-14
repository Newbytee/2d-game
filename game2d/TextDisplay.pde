//unused

class TextDisplay {
  
  String text;
  int x;
  int y;

  TextDisplay() {}
  
  void displayText(String text, int x, int y) {
   
    for (int i = 0; i < (refresh * 6); i++) {
     
      text(text, x, y);
      
      try {
        
        Thread.sleep(1000/refresh);
        
      } catch(InterruptedException ex) {
        
        Thread.currentThread().interrupt();

      }
      
    }
    
  }
  
}