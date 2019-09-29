package mockito;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InOrder;
import org.mockito.invocation.InvocationOnMock;
import org.mockito.runners.MockitoJUnitRunner;
import org.mockito.stubbing.Answer;


import static org.mockito.Mockito.*;
import static org.mockito.BDDMockito.*;

// @RunWith attaches a runner with the test class to initialize the test data
@RunWith(MockitoJUnitRunner.class)
public class MathApplicationTester {

    /*
    //@InjectMocks annotation is used to create and inject the mock object
    @InjectMocks
    MathApplication mathApplication = new MathApplication();

    //@Mock annotation is used to create the mock object to be injected
    @Mock
    CalculatorService calcService; */

    private MathApplication mathApplication;
    private CalculatorService calcService;

    @Before
    public void setUp(){
        mathApplication = new MathApplication();

        //spy on real object
        Calculator calculator = new Calculator();
        calcService = spy(calculator);
        //mock object
        //calcService = mock(CalculatorService.class);

        mathApplication.setCalculatorService(calcService);

    }

    @Test
    public void testMultiply(){

        //Given
        given(calcService.multiply(20.0,10.0)).willReturn(200.0);

        //when
        double result = calcService.multiply(20.0,10.0);

        //then
        Assert.assertEquals(200,result,0);
    }

    @Test
    public void testAdd(){
        //mock dummy specific behavior
        when(calcService.add(10.0,20.0)).thenReturn(30.00);

        //mock dummy specific behavior
        when(calcService.divide(20.0,10.0)).thenReturn(2.0);

        //mock dummy specific behavior
        when(calcService.subtract(20.0,10.0)).thenReturn(10.00);

        //add the behavior to multiply numbers
        when(calcService.multiply(20.0,10.0)).thenAnswer(new Answer<Object>() {

            public Double answer(InvocationOnMock invocation) throws Throwable {
                //get the arguments passed to mock
                Object[] args = invocation.getArguments();

                //get the mock
                Object mock = invocation.getMock();

                //return the result
                return 30.0;
            }
        });

        //test the add functionality
        //when other than the mocked values are given as parameters, the mocked method returns 0
        Assert.assertEquals(30,mathApplication.add(10.0, 20.0),0);
        Assert.assertEquals(30,mathApplication.add(10.0, 20.0),0);
        Assert.assertEquals(30,mathApplication.add(10.0, 20.0),0);

        //verify the behavior, verify that add was called once
        //verify(calcService).add(10.0, 20.0);

        //check if add function is called three times
        verify(calcService, times(3)).add(10.0, 20.0);

        //verify that method was never called on a mock
        verify(calcService, never()).multiply(10.0,20.0);

        //test the subtract functionality
        Assert.assertEquals(10,mathApplication.subtract(20.0, 10.0),0.0);

        //check a minimum 1 call count
        verify(calcService, atLeastOnce()).subtract(20.0, 10.0);

        //check if add function is called minimum 2 times
        verify(calcService, atLeast(2)).add(10.0, 20.0);

        //check if add function is called maximum 3 times
        verify(calcService, atMost(3)).add(10.0,20.0);

        doThrow(new RuntimeException("Divide operation not implemented"))
                .when(calcService).divide(20.0,10.0);

        //test the divide functionality
        Assert.assertEquals(2, mathApplication.divide(20.0, 10.0),0);

        //create an inOrder verifier for a single mock
        InOrder inOrder = inOrder(calcService);

        //following will make sure that add is first called then subtract is called.
        inOrder.verify(calcService).subtract(20.0,10.0);
        inOrder.verify(calcService).add(20.0,10.0);

        //passes when add() is called within 100 ms.
        verify(calcService,timeout(100)).add(20.0,10.0);

        //reset the mock, can be used again
        reset(calcService);
    }
}
