public abstract class Lockable {
  boolean isLocked;
  
  public Lockable() {
    isLocked = false;
  }
  
  public Lockable(boolean status) {
    isLocked = status;
  }
  
  public boolean getStatus() {
    return isLocked;
  }
  
  public void toggelLock() {
    isLocked ^= true;
  }
}
