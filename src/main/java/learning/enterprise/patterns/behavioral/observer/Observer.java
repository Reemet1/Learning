package learning.enterprise.patterns.behavioral.observer;

public abstract class Observer {
    protected Subject subject;
    public abstract void update();
}