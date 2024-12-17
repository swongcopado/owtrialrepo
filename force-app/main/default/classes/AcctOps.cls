public class AcctOps {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description'; // Base Change
            return a;
        }
    }
       
    public static Account setDefaultBillingAddress(Account a){ // Dev 1 Changed this
        a.billingstreet = '15th Floor, Plaza One'; 
        a.billingstate = 'Sydney'; 
        a.billingpostalcode ='2000'; 
        return a;
    }

    public static Account setDefaultShippingAddress(Account a){ // Dev 1 Changed this
        a.shippingstreet = '15th Floor, Plaza Two'; 
        a.shippingstate = 'Melbourne';
        a.shippingpostalcode ='3000';
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