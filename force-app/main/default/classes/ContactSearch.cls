public with sharing class ContactSearch {
    public ContactSearch() {

    }
    public static List<Contact> searchForContacts (String Lastnm, String Mailingcode){
        List<Contact> rescon = 
        [Select name from Contact where LastName= :Lastnm and MailingPostalCode= :Mailingcode];
         return rescon;
    }
}
