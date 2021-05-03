@istest
public with sharing class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    @istest
    public static void testDailyLead(){
        List<Lead> ld= new List<Lead>();
        for(Integer i =0;i<200;i++){
            ld.add(new Lead(FirstName='test', LastName=String.valueOf(i), Company='Acc'));
        }
        insert ld;
        Test.startTest();
            String jobId = System.schedule('ScheduledApexTest',CRON_EXP, new DailyLeadProcessor());
            // Verify the scheduled job has not run yet.
            List<Lead> lt = [SELECT Id from Lead where LeadSource ='Dreamforce'];
            System.assertEquals(0, lt.size(), 'exist before job has run');
        Test.stopTest();

        lt = [SELECT Id from Lead where LeadSource ='Dreamforce'];
        System.assertEquals(ld.size(),
            lt.size(),
            'Tasks were not created');
    }
}
