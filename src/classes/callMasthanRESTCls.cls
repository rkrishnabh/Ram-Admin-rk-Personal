public class callMasthanRESTCls{

    public static void call(){
        
        string uname='admin.masthan@salesforce.com';
        string pswd ='masthan86';
        string ckey='3MVG9A2kN3Bn17htrmg1iq0mCEoQcpWkvaJABZitY.mTcRMbEzsYJwWpBj1rRA7.WJZdq_1.eR2pFRzUz61mH';
        string csecret='5812850356188032915';
        
        string URI = 'https://na15.salesforce.com/services/oauth2/token?grant_type=password&' + 'client_id=' + cKey+ '&' + 'client_secret=' + cSecret+ '&' + 'username=' + uname + '&' + 'password=' + pswd;
        
        //Make a callout
        HttpRequest req = new HttpRequest();
        req.setEndpoint(URI);
        req.setMethod('POST');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug('*** After Authentication...'+res.getBody());
        JSON2Apex j2 = parse(res.getBody());
        System.debug('>>>>>>>>>>>>>>>>>'+j2.access_token);
        
      URI = 'https://na15.salesforce.com/services/apexrest/callREST/insertRecord';
      req =  new HttpRequest();
      req.setEndpoint(URI);
      req.setMethod('POST');
      req.setHeader('content-type','application/json');
      string postData = '{ \"name\": \"Test Rest\", \"phone\": \"1234567890\" }';//Sending the Data i.e Arguments of the Methods of the RestAPI class */
      req.setBody(postData);
      req.setHeader('Authorization', 'OAuth ' + j2.access_token);
      res = http.send(req);
      System.debug('**** After Service Call.....'+res.getBody());
      
      
      URI = 'https://na15.salesforce.com/services/apexrest/callREST/fetchData';
      req =  new HttpRequest();
      req.setEndpoint(URI);
      req.setMethod('GET');
      req.setHeader('content-type','application/json');
      req.setHeader('Authorization', 'OAuth ' + j2.access_token);
      res = http.send(req);
      System.debug('**** After Service Call.....'+res.getBody());
    
    }
    
    public static JSON2Apex parse(String json) {
        return (JSON2Apex) System.JSON.deserialize(json, JSON2Apex.class);
    }

}