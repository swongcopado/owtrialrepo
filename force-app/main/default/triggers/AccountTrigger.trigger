trigger AccountTrigger on Account (before insert) {
    
    for(Account a : trigger.new){
        if (a.BP_Number__c != null && a.BP_Number__c.startsWith('BP')) {
            // Remove 'BP' prefix
            a.BP_Number__c = a.BP_Number__c.replaceFirst('BP', '');
        }

		if(a.Industry == 'Officeworks'){
            a.Site = 'Melbourne';
        }
        
    }
}