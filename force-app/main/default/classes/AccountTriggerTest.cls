@isTest
public with sharing class AccountTriggerTest {
    @isTest static void TestCreateNewAccount() {
        // Test Setup data
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState ='CA');
            accts.add(acct);
        }              
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT BillingState, ShippingState  FROM Account where name like 'Test Account%'];
        List<Account> verifyAc = new List<Account>();
        for (Account var : verifyAccts) {
           if (var.BillingState==var.ShippingState) {
                verifyAc.add(var);
           }
       }                           
        System.assertEquals(200, verifyAc.size(),'Testcase Passed');                             
    }
}