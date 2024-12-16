@IsTest
public class AccountOperationsStevenTest {

    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description');
        insert acc;
        acc = AccountOperationsSteven.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}