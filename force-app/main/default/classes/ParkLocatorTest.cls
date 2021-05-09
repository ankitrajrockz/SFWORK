@istest
public with sharing class ParkLocatorTest {
    @isTest static void testCallout() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String val='India';
        String [] result = ParkLocator.country(val);
        // Verify that a fake result is returned
        String [] expected = new String[]{'Germany', 'India', 'Japan', 'United States'};
        System.assertEquals(expected, result); 
    }
}