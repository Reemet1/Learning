package junit;

import org.junit.Test;
import junit.framework.AssertionFailedError;

public class ResultTest extends junit.framework.TestResult {
    // add the error
    public synchronized void addError(Test test, Throwable t) {
        super.addError((junit.framework.Test) test, t);
    }

    // add the failure
    public synchronized void addFailure(Test test, AssertionFailedError t) {
        super.addFailure((junit.framework.Test) test, t);
    }

    @Test
    public void testAdd() {
        // add any test
    }

    // Marks that the test run should stop.
    public synchronized void stop() {
        //stop the test here
    }
}