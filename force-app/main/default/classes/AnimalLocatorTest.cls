@istest
public with sharing class AnimalLocatorTest {
    @istest
    static void testRestCall() {

        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String response = AnimalLocator.getAnimalNameById(1);
        
        System.assertEquals(response, 'chicken');
        
    }
}
