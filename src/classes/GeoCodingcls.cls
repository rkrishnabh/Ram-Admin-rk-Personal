public with sharing class GeoCodingcls {
    //https://maps.googleapis.com/maps/api/geocode/json?address=Ameerpet,%20Hyderabad&sensor=true
    
    public string address{get; set;}
    
    
    public void fetch(){
        //Creating a request
        Httprequest req = new Httprequest();
        
        string URI = 'https://maps.googleapis.com/maps/api/geocode/json?address='+address+'&sensor=false';
        //Set Endpoint
        req.setEndpoint(URI);
        req.setMethod('GET');
        
        //Create a HTTP object
        Http obj = new Http();
        
        //Send the request and gather the response
        Httpresponse res = obj.send(req);
        
        System.debug('>>>>>>>>>>>>>>'+res.getBody());
        
        fromJSON fj = parse(res.getBody());
        
        System.debug('>>>>>>>>>>>>>>>>>>>>>>>'+fj);
        System.debug('>>>>>>>>>>>>>>>>>>>>>>>'+fj.results);
        System.debug('>>>>>>>>>>>>>>>>>>>>>>>'+fj.results[0].geometry);
        System.debug('>>>>>>>>>>>>>>>>>>>>>>>'+fj.results[0].geometry.location);
        System.debug('>>>>>>>>>>>>>>>>>>>>>>>'+fj.results[0].geometry.location.lat);
        System.debug('>>>>>>>>>>>>>>>>>>>>>>>'+fj.results[0].geometry.location.lng);
    
    }
    



    public static fromJSON parse(String json){
        return (fromJSON) System.JSON.deserialize(json, fromJSON.class);
    }

    
    
}