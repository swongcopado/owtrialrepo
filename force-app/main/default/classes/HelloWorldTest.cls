@isTest
public class HelloWorldTest {
    
    @isTest
    public static void testSayHello() {
        String expected = 'Hello World';
        String actual = HelloWorld.sayHello();
        System.assertEquals(actual,expected,'not the same');
    }

}