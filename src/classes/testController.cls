public with sharing class testController {
  public list<test> listoftest{get;set;}
  public testController() {
  listoftest = new  list<test>();
     
  Http httpProtocol = new Http();
        // Create HTTP request to send.
        HttpRequest request = new HttpRequest();
        request.setHeader('Authorization', 'OAuth ' + userInfo.getSessionId());
        request.setHeader('Content-Type', 'application/json');

        // Set the endpoint URL.
        String endpoint = 'https://ap1.salesforce.com/services/data/v29.0/tooling/query/?q=select+apexclassortrigger.name+,NumLinesCovered,NumLinesUncovered+from+apexcodecoverageaggregate+order+by+apexclassorTrigger.name';
        request.setEndPoint(endpoint);
        // Set the HTTP verb to GET.
        request.setMethod('GET');
        // Send the HTTP request and get the response.
        // The response is in JSON format.
        HttpResponse response = httpProtocol.send(request);
        System.debug('************Response***************'+response.getBody());  
      
    
    map<String,Object> mapOfAccountFieldValue = (map<String,Object>) JSON.deserializeUntyped(response.getBody());
    system.debug('***************key*****************'+mapOfAccountFieldValue.keyset());
        system.debug('***********values*********************'+mapOfAccountFieldValue.values());
    list<Object> listOfObject = new list<Object>();
    listOfObject = (list<Object>)mapOfAccountFieldValue.get('records');
    map<String, Object> mapOfContactFieldValue;
    map<String, Object> mapOfContactFieldValueattribute;
    test testobj;
    for(Object obj: listOfObject ) {
    testobj = new test();
    mapOfContactFieldValue = (Map<String, Object>)obj;
    testobj.NumLinesUncovered = (Decimal )mapOfContactFieldValue.get('NumLinesUncovered') ; 
    testobj.NumLinesCovered = (Decimal )mapOfContactFieldValue.get('NumLinesCovered') ;
   
    system.debug('NumLines not covered123...  '+mapOfContactFieldValue.get('NumLinesUncovered') );
    system.debug('NumLinesCovered123...  '+mapOfContactFieldValue.get('NumLinesCovered') );
    system.debug('attributes'+mapOfContactFieldValue.get('attributes') );
    map<String, Object> mapOfContactFieldValueattr;
    list<Object> listOfObjectattr = new list<Object>();
    mapOfContactFieldValueattr = (map<String, Object>) mapOfContactFieldValue.get('ApexClassOrTrigger');
      system.debug('mapOfContactFieldValueattr '+mapOfContactFieldValueattr );
    system.debug('mapOfContactFieldValue '+mapOfContactFieldValueattr.get('Name') );
     testobj.Name = (string)mapOfContactFieldValueattr.get('Name');
     system.debug('Object Name.........'+testobj.Name);
     system.debug('test num of lines covered.......'+testobj.NumLinesCovered);
     system.debug('test num of lines not covered.......'+testobj.NumLinesUncovered);
     try{
     testobj.uncover = testobj.NumLinesCovered/(testobj.NumLinesCovered + testobj.NumLinesUncovered)*100;
     listoftest.add(testobj);
     }
     catch(Exception ex){
     
     }
    }
  }
  
  public class test{
    public decimal NumLinesUncovered{get;set;}
    public decimal NumLinesCovered{get;set;}
    public string Name{get;set;}
     public decimal uncover{get;set;}
  }
}