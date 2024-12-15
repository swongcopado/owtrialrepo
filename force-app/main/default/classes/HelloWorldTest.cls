@isTest
public class HelloWorldTest {
    
    @isTest
    public static void testSayHello() {
        String expected = 'User 2 Updated This';
        String actual = HelloWorld.sayHello();
        System.assertEquals(actual,expected,'not the same');
    }

}