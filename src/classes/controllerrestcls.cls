public with sharing class controllerrestcls {

    public String name{get; set;}
 public String phone{get; set;}
    public pagereference ref(){
    
    
    HttpRequest request = new HttpRequest();
  request.setEndpoint('https://login.salesforce.com/services/Soap/u/22.0');
  request.setMethod('POST');
  request.setHeader('Content-Type', 'text/xml;charset=UTF-8');
  request.setHeader('SOAPAction', '""');
  request.setBody('<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Header/><Body><login xmlns="urn:partner.soap.sforce.com"><username>sfdc.development01@gmail.com</username><password>india@12</password></login></Body></Envelope>');
  Dom.XmlNode resultElmt = (new Http()).send(request).getBodyDocument().getRootElement()
    .getChildElement('Body','http://schemas.xmlsoap.org/soap/envelope/')
    .getChildElement('loginResponse','urn:partner.soap.sforce.com')
    .getChildElement('result','urn:partner.soap.sforce.com');
   
  //----------------------------------------------------------------------
  // Grab session id and server url (ie the session)
  //----------------------------------------------------------------------
  String SERVER_URL = resultElmt.getChildElement('serverUrl','urn:partner.soap.sforce.com').getText().split('/services')[0];
  String SESSION_ID = resultElmt.getChildElement('sessionId','urn:partner.soap.sforce.com').getText();

    
      string endpointmaker=SERVER_URL+'/services/apexrest/contactrestexposer/';
      string sbody;
      
    sbody='<request>';
       sbody=sbody+'<def xmlns:mycdef="http://sopa.sforce.com/schemas/class/restcontact">';
        sbody=sbody+'<mycdef:name>shiva</mycdef:name>';
        sbody=sbody+'<mycdef:email>shiva@shiva.com</mycdef:email>';  
       sbody=sbody+'</def>';
       sbody=sbody+'<extrastring>text</extrastring>';
    sbody=sbody+'</request>';
    
    
    
    HttpRequest r=new HttpRequest ();
    r.setMethod('POST');
    r.setEndpoint(endpointmaker);
    r.setheader('Content-Type','application/xml');
    r.setheader('Authorization','OAuth '+SESSION_ID);
    r.setbody(sbody);
    
    http h=new http();
    Httpresponse hrr=h.send(r);
    
    system.debug(hrr.getbody()+'OOOOOOOOOOOOOOOOOOOOOOOOOO');
    
    
    
    
    return null;
    } 


}