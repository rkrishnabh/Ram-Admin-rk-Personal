public class callMasthanOrg{

    
    public static void call(){
    
        partnersoapsforcecom.soap sp = new partnersoapsforcecom.soap();
        
        partnersoapsforcecom.loginResult res= sp.login('admin.masthan@salesforce.com','masthan86');
        
        System.debug('>>>>>>>>>>>>>>'+res);
        System.debug('>>>>>>>>>>>>>>'+res.sessionId);
        
        masthancls.SessionHeader_element sh = new masthancls.SessionHeader_element();
        sh.sessionId = res.sessionId;
        
        masthancls.servicecls obj = new masthancls.servicecls();
        obj.SessionHeader = sh;
        String insertedRecId = obj.insertRecord('Ctrla Technologies','1234567890');
        System.debug('>>>>>>>>>>>'+insertedRecId);
    
    }
    

}