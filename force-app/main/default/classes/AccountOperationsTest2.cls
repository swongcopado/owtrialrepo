@isTest
public class AccountOperationsTest2 {
    @isTest
    static void test_setDefaultName() {
        // Create a new Account object
        Account a = new Account();
        
        // Set the name of the Account to null
        a.name = null;
        
        // Call the setDefaultName method
        AccountOperations ao = new AccountOperations();
        ao.setDefaultName(a);
        
        // Verify that the name has been set to 'Default'
        System.assertEquals('Default', a.name);
    }
}