public abstract class Lockable {
  boolean isLocked;
  
  public Lockable() {
    isLocked = false;
  }
  
  public boolean isLocked() {
    return isLocked;
  }
  
  public void toggleLock() {
    isLocked ^= true;
  }
  
  public void lock() {
    isLocked = true;
  }
  
  public void unlock() {
    isLocked = false;
  }
}
