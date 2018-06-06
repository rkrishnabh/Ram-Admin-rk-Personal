public class logincls {
    
    public string uname{get; set;}
    public string pswd{get; set;}
    public pagereference validate(){
        try{
        Registration__c reg = [Select id, password__c from Registration__c where username__c=:uname];
        if(reg.password__c == pswd){
            
            pagereference ref = new pagereference('/apex/controller');
            return ref;
        }
        else{
            
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Info,'Invalid Password');
            ApexPages.addMessage(msg);
            
        }
        }
        catch(exception e){
             ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Info,'No record exists in our db...');
            ApexPages.addMessage(msg);
        
        }
        return null;
        
    
    }

}