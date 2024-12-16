@IsTest
private class AccountOperationsStevenTest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountOperationsSteven.setDefaultDescription(acc);
    }
}