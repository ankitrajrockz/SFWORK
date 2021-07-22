public with sharing class ProductDetails {
    
    @AuraEnabled
    public static List<New_Property__c> getLatestProperty(){
        List<New_Property__c> allprop=new list<New_Property__c>();
            allprop=[select id,Additional_Room__c,
            Available_From__c,
            Carpet_Area_sq_ft__c,
            Covered_Area_Sq_ft__c,
            Electricity_Status__c,
            Facing__c,
            Floor__c,
            For_Bachellor__c,
            For_Family__c,
            Furnishning_Available__c,
            Furnished_Type__c,
            Geo_Map__c,
            Landmark__c,
            Area__c,
            street__c,
            State__c,
            country__c,
            Maintainence_Charge__c,
            Num_of_Balcony__c,
            Num_of_Bath_Room__c,
            Num_of_Bed_Room__c,
            Property_Description__c,
            Property_Main_Image__c,
            Property_Owner__c,
            Property_Video_URL__c,
            Name,
            Rent__c,
            Security_Deposit__c,
            Status__c,
            Verified__c,
            Water_Availability__c
            from New_Property__c LIMIT 50];
        return allprop;
    }
}
