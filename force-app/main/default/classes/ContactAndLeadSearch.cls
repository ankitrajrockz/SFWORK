public with sharing class ContactAndLeadSearch {
    public ContactAndLeadSearch() {

    }
    public static List<List< SObject>> searchContactsAndLeads(String inp){
            String constquery='FIND {'+inp+'} IN ALL FIELDS RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName)';
            List<List<SObject>> soslsearch = search.query(constquery);
            return soslsearch;
    }
}