@istest
public with sharing class AccountManagerTest {
    @isTest 
    static void getAccountiwthContact() {
        Account act = new Account(Name='Test Rest');
        insert act;
        Contact c = new Contact(LastName='Test Method', FirstName='Rest', AccountId=act.Id);
        insert c;
        Id RecordId = act.id;
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://ranki-dev-ed.lightning.force.com/services/apexrest/Accounts/'+RecordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account acnt = AccountManager.getaccount();
        // Verify results
        System.assert(acnt != null);
        System.debug(acnt);
    }
}