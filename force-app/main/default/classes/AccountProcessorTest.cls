@IsTest
public with sharing class AccountProcessorTest {
    @TestSetup
    static void makeData(){
        List<Account> act= new List<Account>();
        List<Contact> cont= new List<Contact>();
        for(Integer i=0;i<200;i++){
          Account a= new Account(Name='test'+i);
          Contact c= new Contact(
              FirstName=a.name,
              LastName='contact',
              AccountId=a.id);
            act.add(a);
            cont.add(c);
        }
        insert act;
        insert cont;
    }

    @Istest
    static void runMtd(){
        test.startTest();
        List<Account> lstact= new List<Account>([Select id from Account]);
        List<Id> i = new List<id>();
        for(Account a: lstact){
            i.add(a.Id);
        }
        AccountProcessor.countContacts(i);
        test.stopTest();
    }
}
