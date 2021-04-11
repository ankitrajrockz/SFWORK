@isTest
public class TestVerifyDate {
    @isTest static void checkDatemorethan30() {

        Date d1= VerifyDate.checkDates(date.parse('08/01/2020'), date.parse('12/10/2020'));
       System.assertEquals(date.parse('08/31/2020'),d1,'Date more than 30 days');
    }
    @isTest static void checkDatelessthan30() {
        
           Date d1= VerifyDate.checkDates(date.parse('08/01/2020'), date.parse('08/21/2020'));
           System.assertEquals(date.parse('08/21/2020'),d1,'Date less than 30 days');
    }

}