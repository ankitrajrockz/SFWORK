public with sharing class AddPrimaryContact implements Queueable {
    private Contact obj ;
    private String state;
    public AddPrimaryContact( Contact obj, String state) {
        this.obj=obj;
        this.state=state;
    }

    public void execute(QueueableContext context) {
        List<Account> act = [Select id from Account where BillingState = :state LIMIT 200];
        List<Contact> ct = new List<Contact>();
        for(Account a:act){
            Contact clonect=obj.clone();
            clonect.AccountId=a.Id;
            ct.add(clonect);
        }
        insert ct;
    }
}
