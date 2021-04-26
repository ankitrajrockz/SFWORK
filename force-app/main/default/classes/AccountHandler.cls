public with sharing class AccountHandler {
    public static Account insertNewAccount(String inpName){
        list<Account> lstact= new list<Account>();
       
        try {
            Account act = new Account(Name=inpName);
            insert act;
            return act;
        } catch (DmlException e) {
            System.debug(e.getmessage());
            return null;
        }
        
    }
}