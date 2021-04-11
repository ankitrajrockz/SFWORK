@isTest
public class TestRestrictContactByName {
    @isTest static void TestCreatecontact() {
        Contact c = new Contact(FirstName='Ankit',LastName='INVALIDNAME');
        Test.startTest();
        Database.SaveResult result = Database.insert(c,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals(NULL, c.LastName);
    }
    
    @isTest static void Testupdatecontact() {
        Contact c = new Contact(FirstName='Ankit',LastName='Raj');
        Insert c;
        
        c.LastName='INVALIDNAME';
        
        Test.startTest();
        Database.SaveResult result = Database.update(c,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Raj', c.LastName);
    } 
}