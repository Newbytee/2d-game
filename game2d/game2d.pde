Menu m;

boolean isPlaying = false;
boolean gameIsOver = false;

void setup() {
 
  m = new Menu();
  
  size (512, 512);
   
  mainGame();
   
}

void mainGame() {
 
  rect(0, 400, width-1, 111);
  
  m.mainMenu();
  
  while (gameIsOver == false) {
    
    gameIsOver = true;
    
  }
  
}