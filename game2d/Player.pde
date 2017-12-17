class Player {
 
  float playerJump; //jump height (unused)
  float playerYMove; //factor of which the player should move on the Y-axis
  float playerY; //Y coordinate of the player
  boolean hasInit = false;
  boolean playerOnGround = true;
  
  Player() {
    
  }
  
  void init() { //initialise player values
    
    if (hasInit == false) {
   
      playerY = 0.0f;
      playerYMove = 0.0f;
      playerJump = 0;
      
      hasInit = true;
    
    }
    
  }
    
  void drawPlayer() {
    
    if (playerJump != 0) {
     
      playerYMove = playerYMove * playerJump;
      
    }
    
    playerY -= playerYMove;
    
    rect(100, playerY, 20, 20);
    
  }
  
  void playerJump() {
   
    playerYMove = 5.0f;
    
  } 
  
  void playerGravity() {
   
    if (playerY >= 379.5) {
     
      playerOnGround = true;
      
    } else {
     
      playerOnGround = false;
      
    }
    
    if (playerOnGround == true) {
     
      playerYMove = 0;
      
    } else {
     
      playerYMove = playerYMove - 0.1;
      
    }
    
    if (playerY > 380) { //move player back up if they get below ground for whatever reason
     
      playerY = 380;
      
    }
    
  }
  
}