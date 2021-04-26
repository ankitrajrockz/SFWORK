public with sharing class StringArrayTest {
    public StringArrayTest() {

    }

    public static List<String> generateStringArray(Integer lenarray){
        List<String> rtrval= new List<String>();
        for(Integer i=0;i<lenarray;i++){
            String val='Test '+i;
            rtrval.add(val);
        }
        return rtrval;
    }
}
