public with sharing class dysoslEx_controller {

     public String message {get;set;}
    public List<Student__c> StList{get; set;}
    public List<Student__c> getStList() {
        return StList;
    }


    List<List<Sobject>> srResult;
    public void Search() {
    StList=new List<Student__c>();
    if(SearchStr.length() > 1){
    String q='Find \''+SearchStr+'*\' IN ALL FIELDS RETURNING ctrla51__Student__c(id,Name)';
    
    
    //List<List<Sobject>> srResult=new List<List<Sobject>>();
    
    srResult=Search.Query(q);
    system.debug('*****'+srResult[0]);
    StList=(List<Student__c>)srResult[0];
    if(StList.size() == 0){
    message='Sory, no results returned with matching string..';
    system.debug('&&&&&&&&'+message);
    apexPages.addmessage(new apexpages.message(apexpages.severity.Error, 'Sory, no results returned with matching string..'));
       return;
    
    }
   
    }
    
     else{
   apexPages.addmessage(new apexpages.message(apexpages.severity.Error, 'Please enter at least two characters..'));
   return;
   }
   }


    public String SearchStr { get; set; }
}