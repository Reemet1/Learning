package learning.enterprise.patterns.behavioral.interpreter;

public interface Expression {
    public boolean interpret(String context);
}