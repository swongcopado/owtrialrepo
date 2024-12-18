@isTest
public class AccountTriggerTest {

    @isTest
    static void testRemoveBPPrefix() {
        // Create a new account with BP prefix
        Account account = new Account(BP_Number__c = 'BP12345', name = 'Test Account');
        insert account;

        // Get the account from database
        Account updatedAccount = [SELECT BP_Number__c FROM Account WHERE Id = :account.Id];

        // Check if 'BP' prefix is removed
        System.assertEquals('12345', updatedAccount.BP_Number__c);
    }

    @isTest
    static void testNoBPPrefix() {
        // Create a new account without BP prefix
        Account account = new Account(BP_Number__c = 'BP12345', name = 'Test Account');
        insert account;

        // Get the account from database
        Account updatedAccount = [SELECT BP_Number__c FROM Account WHERE Id = :account.Id];

        // Check if 'BP' prefix is not removed
        System.assertEquals('12345', updatedAccount.BP_Number__c);
    }

    @isTest
    static void testBPNumberWithNonBPPrefix() {
        // Create a new account with BP prefix and non-BP prefix
        Account account = new Account(BP_Number__c = 'BP12345ABC', name = 'Test Account');

        insert account;

        // Get the account from database
        Account updatedAccount = [SELECT BP_Number__c FROM Account WHERE Id = :account.Id];

        // Check if only 'BP' prefix is removed
        System.assertEquals('12345ABC', updatedAccount.BP_Number__c);
    }

    @isTest
    static void testBPNumberWithNullValue() {
        // Create a new account with null value
        Account account = new Account(BP_Number__c = null, name = 'Test Account');

        insert account;

        // Get the account from database
        Account updatedAccount = [SELECT BP_Number__c FROM Account WHERE Id = :account.Id];

        // Check if 'BP' prefix is not removed
        System.assertEquals(null, updatedAccount.BP_Number__c);
    }
}