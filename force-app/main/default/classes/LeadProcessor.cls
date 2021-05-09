public without sharing class LeadProcessor implements Database.Batchable<SObject> {
    
    public Database.QueryLocator start (Database.BatchableContext bc){
            return Database.getQueryLocator('Select id, LeadSource from lead');
    }

    public void execute (Database.BatchableContext bc, List<Lead> leads){
        for(Lead ld: leads){
            ld.LeadSource='Dreamforce';
        }
        update leads;
    }

    public void finish (Database.BatchableContext bc){
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors,
        JobItemsProcessed,
        TotalJobItems, CreatedBy.Email
        FROM AsyncApexJob
        WHERE Id = :bc.getJobId()];
        String Det = String.valueOf(job);
        EmailManager.sendMail('ankitrajrockz@gmail.com','Batch Job',Det);
        System.debug(job);
    }
}