public abstract class Lockable {
  String status;
  
  public Lockable() {
    status = "Unlocked";
  }
  
  public Lockable(String status) {
    this.status = status;
  }
  
  public String getStatus() {
    return status;
  }
  
  public void toggleLockTransparent() {
  }
  
  public void toggleLockImage() {
  }
  
  public void toggleLockPosition() {
  }
  
  public void toggleLockAll() {
    
  }
}
