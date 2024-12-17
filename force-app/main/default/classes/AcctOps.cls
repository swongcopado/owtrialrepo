public class AcctOps {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description'; // Base Change
            return a;
        }
    }
       
    public static Account setDefaultBillingAddress(Account a){ // Dev 2 Changed This
        a.billingstreet = 'Plaza 3'; 
        a.billingstate = 'Manila'; 
        a.billingpostalcode ='30200'; 
        return a;
    }

    public static Account setDefaultShippingAddress(Account a){ // Dev 2 Changed This
        a.shippingstreet = 'Plaza 4'; 
        a.shippingstate = 'Pune';
        a.shippingpostalcode ='5333030';
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