public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer inp){
        Http htp = new Http();
        HttpRequest htprequest = new HttpRequest();

        htprequest.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+inp);
        htprequest.setMethod('GET');

        HttpResponse htpresponse = htp.send(htprequest);
        if (htpresponse.getStatusCode() == 200) {
            Map<String, Object> opMap=(Map<String, Object>)JSON.deserializeUntyped(htpresponse.getBody());

            Map<String, Object> animals= (Map<String, Object>)opMap.get('animal');
            String result = String.valueOf(animals.get('name'));
            return result;
        }
        return null;
    }
}