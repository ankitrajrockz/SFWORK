public with sharing class AccountProcessor {

    @future
    public static void countContacts(List<ID> acctID){
    List<Account> acctcondetails=new List<Account>([Select id, (Select id from Contacts) from account where id in :acctId]);
    List<Account> acupdate= new List<Account>();
    for(Account ac: acctcondetails){
        ac.Number_Of_Contacts__c=ac.Contacts.size();
        acupdate.add(ac);
    }
    update acupdate;
    }
}