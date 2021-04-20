public with sharing class AccountUtils {
    public AccountUtils() {

    }
    public static List<Account> accountsByState(String state){


        List<Account> acclst= [SELECT id,name FROM Account where BillingState=:state];
        return acclst;
    }
}