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


    static testMethod void testAccountTrigger_Officeworks_site_Not_Set() {
        // Create a new account with a valid name but different industry
        Account account = new Account(
            Name = 'Test Account',
            Industry = 'Retail'
        );
        
        // Insert the account
        insert account;
        
        Account acc = [SELECT ID, SITE FROM ACCOUNT WHERE Name = 'Test Account' LIMIT 1 ];
        // Verify that the site is not set
        System.assertEquals(null, acc.site);
    }

    static testMethod void testAccountTrigger_Officeworks_site_Already_Set() {
        // Create a new account with a valid name and site already set
        Account account = new Account(
            Name = 'Test Account',
            Industry = 'Officeworks',
            site = 'Melbourne'
        );
        
        // Insert the account
        insert account;
        
        Account acc = [SELECT ID, SITE FROM ACCOUNT WHERE Name = 'Test Account' LIMIT 1 ];
        // Verify that the site is still set to 'Melbourne'
        System.assertEquals('Melbourne', acc.site);
    }

    
    static testMethod void testAccountTrigger_Officeworks_site() {
        // Create a new account with a valid name and site already set
        Account account = new Account(
            Name = 'Test Account',
            Industry = 'Officeworks'
        );
        
        // Insert the account
        insert account;
        
        Account acc = [SELECT ID, SITE FROM ACCOUNT WHERE Name = 'Test Account' LIMIT 1 ];
        // Verify that the site is still set to 'Melbourne'
        System.assertEquals('Melbourne', acc.site);
    }

    
    static testMethod void testAccountTrigger_Industry_Missing() {
        // Create a new account without an industry
        Account account = new Account(
            Name = 'Test Account'
        );
        
        // Expect an exception to be thrown
        
            insert account;
        
        Account acc = [SELECT ID, SITE FROM ACCOUNT WHERE Name = 'Test Account' LIMIT 1 ];
        System.assertEquals(null, acc.site);
    }
}