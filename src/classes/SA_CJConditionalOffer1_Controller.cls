public with sharing class SA_CJConditionalOffer1_Controller {
    public Id conId;
    public String userName    {get;set;}
    public String firstName   {get;set;}
    public String uPassword   {get;set;}
    Contact objCon            {get;set;}
    contact conVal;

    public SA_CJConditionalOffer1_Controller(){
        conId= ApexPages.CurrentPage().getParameters().get('ContactId');
        if(getContact() !=null){
            conVal=getContact();
            firstName=conVal.firstname;
            userName=conVal.firstname+'.'+conVal.lastname;
        }else{
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'erorr'));
        }
    }
    public contact getContact(){
        try{
            if(conId !=null ){
                objCon=[SELECT Id,lastname,firstname,name,email FROM contact WHERE Id=:conId];
            }
        }
        catch(Exception e){
            String error = e.getMessage();
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,error));

        }
        if(objcon !=null){
            return objcon;
        }else{
            return null;
        }
    }
    //Create the community user based on Contact..
    public PageReference getUser(){
        PageReference acctPage;
        system.debug('conVal info*********'+conVal);
        if(conVal !=null){
            // Profile is selected for OLA Community User
            Profile pf = [SELECT Id,name FROM Profile WHERE name ='Gold Partner User' LIMIT 1];            
            system.debug('Profile info********'+pf);
            
            List<User> userDetail = [SELECT Id, username, Email FROM User WHERE profileid =: pf.Id AND email=:conVal.Email AND contactId=:conVal.Id];
            system.debug('userDetail info********'+userDetail);
            if(!(userDetail.size()>0)){
                User usr = new User(contactId=conVal.Id, username=conVal.Email, firstname=conVal.FirstName,
                lastname=conVal.LastName, email=conVal.Email,communityNickname = string.valueof(conVal.FirstName.substring(0,2) + conVal.LastName.substring(0,2)),
                alias = string.valueof(conVal.FirstName.substring(0,1) + conVal.LastName.substring(0,1)), profileid = pf.Id, emailencodingkey='UTF-8',
                languagelocalekey='en_US', localesidkey='en_US', timezonesidkey='America/Los_Angeles', UserPreferencesDisableMessageEmail=false);
                
                insert usr; 
                system.debug('User info********'+usr);
                system.setPassword(usr.id, uPassword);
                system.debug('User info1********'+usr);
                if(usr !=null){
                    acctPage = new PageReference('/apex/SA_CJStatements2A');
                    Site.login(usr.Email, uPassword, '/SA_CJStatements2A?ContactId='+conId);
                    system.debug('page launched:*******'+acctPage );
                    acctPage.setRedirect(true);
                }
            }else{
                acctPage = new PageReference('/apex/SA_CJERROR');
                 system.debug('page launched Error:*******'+acctPage );
                acctPage.setRedirect(true);
            }
        }
        return acctPage;
    }
}