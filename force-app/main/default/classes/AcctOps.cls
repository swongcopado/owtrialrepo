public class AcctOps {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description'; // Base Change
            return a;
        }
    }
       
    public static Account setDefaultBillingAddress(Account a){ // Base Change
        a.billingstreet = 'Basauri, 6'; 
        a.billingstate = 'Madrid'; 
        a.billingpostalcode ='28023'; 
        return a;
    }

    public static Account setDefaultShippingAddress(Account a){ // Base Change
        a.shippingstreet = 'Basauri, 6'; 
        a.shippingstate = 'Madrid';
        a.shippingpostalcode ='28023';
        return a;
    }
    public static Account setDefaultPhone(Account a) { // Base Change
        a.Phone='688456789'; 
        return a;
    }
    public static Account setDefaultURL(Account a) { // Base Change
        a.website = 'www.copa.do'; 
        return a;
    }
}