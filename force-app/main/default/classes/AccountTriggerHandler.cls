public without sharing class AccountTriggerHandler {
    
   
    public static void CreateAccounts(List<Account> accn) {
        List<Account> aclist= new List<Account>();
        for(Account a: accn){
            a.ShippingState=a.BillingState;
            aclist.add(a);
                
        }

    }
}
