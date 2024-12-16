trigger AccountTrigger on Account (before insert) {

    for(Account a : trigger.new){
        if(a.Industry == 'Officeworks'){
            a.Site = 'Melbourne';
        }
    }
    
}