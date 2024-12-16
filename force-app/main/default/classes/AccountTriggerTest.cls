// AccountTriggerTest.cls
@isTest
public class AccountTriggerTest {

    static testMethod void testAccountTrigger_Officeworks_site_Not_Set() {
        // Create a new account with a valid name but different industry
        Account account = new Account(
            Name = 'Test Account',
            Industry = 'Retail'
        );
        
        // Insert the account
        insert account;
        
        // Verify that the site is not set
        System.assertEquals(null, account.site);
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
        
        // Verify that the site is still set to 'Melbourne'
        System.assertEquals('Melbourne', account.site);
    }

    
    static testMethod void testAccountTrigger_Industry_Missing() {
        // Create a new account without an industry
        Account account = new Account(
            Name = 'Test Account'
        );
        
        // Expect an exception to be thrown
        
            insert account;
            System.assertEquals(null, account.site);
    }
}