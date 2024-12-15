@isTest
public class HelloWorldTest {
    
    @isTest
    public static void testSayHello() {
        String expected = 'Hello';
        String actual = HelloWorld.sayHello();
        System.assertEquals(actual,expected,'not the same');
    }

}