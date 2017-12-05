Menu m;
GameLogic g;

boolean isPlaying = false;
boolean gameIsOver = false;

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  
  size (512, 512);
   
}

void draw() {

  m.mainMenu();
  
  if (isPlaying == true) {
   
    g.init();
    
  }
  
}

void mainGame() {
 
  rect(0, 400, width-1, 111);
  
  m.mainMenu();
  
  while (gameIsOver == false) {
    
    gameIsOver = true;
    
  }
  
}