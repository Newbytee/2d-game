class Enemy {
 
  int x;
  int y;
  
  Enemy(int x, int y) {
   
    this.x = x;
    this.y = y;
    
  }
  
  void spawn() {
   
    rect(10, 10, x, y);
    
  }
  
}