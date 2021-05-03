@isTest
public with sharing class AddPrimaryContactTest {
    @TestSetup
    static void makeData(){
        List<Account> lstat= new List<Account>();
        for(Integer i=0;i<50;i++){
            lstat.add(new Account(Name='Test'+i, BillingState='NY'));
        }
        for(Integer i=0;i<50;i++){
            lstat.add(new Account(Name='Test'+(50+i), BillingState='CA'));
        }

        insert lstat;
    }

    @istest
    public static void testQueuable(){
        Contact con = new Contact(FirstName='Test', LastName='Queuable');
        Map<Id,Account> mac = new Map<Id,Account>([Select id, Name from Account where BillingState='CA']);
        List<Id> lstid= new list<Id>(mac.keySet());
        Test.startTest();
        AddPrimaryContact ap = new AddPrimaryContact(con,'CA');
        System.enqueueJob(ap);
        Test.stopTest();

        System.assertEquals(50, [select count() from Contact where accountid in :lstid]);
    }
}
