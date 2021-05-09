@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet 
    global static Account getaccount(){
        RestRequest req= RestContext.request;
        System.debug(req.requestURI);
        
        List<String> val = req.requestURI.split('/');
        String actid=null;
        if (val.size()>1) {
            actid=val.get(val.size()-2);
        }
        
        //String actid= req.requestURI.substringBetween('Accounts/', '/contacts');

        System.debug(actid);
         Account ac= [Select id, name, (Select Id, Name from Contacts) from Account where Id=: actid];

         return ac;
    }
}
