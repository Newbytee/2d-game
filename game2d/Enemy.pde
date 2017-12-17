class Enemy {
 
  int x;
  int y;
  float speedX;
  float speedY;
  
  Enemy(int x, int y, float speedX, float speedY) {
   
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    
  }
  
  void spawn() {
   
    rect(10, 10, x, y);
    
  }
  
  void move() {
   
    
    
  }
  
}