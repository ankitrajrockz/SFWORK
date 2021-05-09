@isTest
public with sharing class LeadProcessorTest {
    @TestSetup
    static void makeData(){
        List<Lead> ld= new List<Lead>();
        for(Integer i=0;i<200;i++){
            Lead a= new Lead(FirstName='test'+i, Lastname='Leads',Company='Accenture');
          
            ld.add(a);
        }
        insert ld;
    }

    @isTest
    static void TestLLeadProcessorr(){
        Test.startTest();
        LeadProcessor lp= new LeadProcessor();
        Id batcid= Database.executeBatch(lp);
        Test.stopTest();

        System.assertEquals(200, [select count() from Lead where LeadSource='Dreamforce']);
    }
}