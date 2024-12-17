@isTest
public class AcctOpsTest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Test Account');
        acc = AcctOps.setDefaultDescription(acc);
        acc = AcctOps.setDefaultBillingAddress(acc);
        acc = AcctOps.setDefaultShippingAddress(acc);
        acc = AcctOps.setDefaultPhone(acc);
        acc = AcctOps.setDefaultURL(acc);
        Database.SaveResult result = Database.insert(acc);
        Test.stopTest();
        // Verify
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Default description', savedAcc.Description);
    }
}