Menu m;

boolean isPlaying = false;
boolean gameIsOver = false;

void setup() {
 
  size (512, 512);
   
  mainGame();
   
}

void mainGame() {
 
  background(#00A0FF);
  rect(0, 400, width-1, 111);
  
  m = new Menu();
  
  if (isPlaying == false) {
   
    m.mainMenu();
    
  }
  
  while (gameIsOver == false) {
    
    
    
  }
  
}