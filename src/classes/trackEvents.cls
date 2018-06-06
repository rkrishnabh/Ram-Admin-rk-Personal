public with sharing class trackEvents {

    public String getDisplayRecords { get; set; }

   

    public List<EventTrackingWrapper> wrappers {get; set;}
    private Integer nextIdent=0;
    public list<String> tempselectedvalues{get;set;}
   
   
    public PageReference showsubactivityvalues() {
    string multiPicklistvalues = eT.SubActivity__c;
    System.debug('******inside action method*****'+multiPicklistvalues);
    if(eT.SubActivity__c != '' && eT.SubActivity__c != null){
    tempselectedvalues.addAll(eT.SubActivity__c.split(';'));
    System.debug('******inside action method*****'+tempselectedvalues.size());
    }
        return null;
    }

    public Event_Tracking__c eT{get;set;}
    public trackEvents(){
        eT = new Event_Tracking__c();
        tempselectedvalues = new list<String>();
    }
    
    //For display selected sub activity
    
    public VOID DisplayRecords()
    {
    wrappers=new List<EventTrackingWrapper>();
    for(integer i=0;i<tempselectedvalues.size();i++)
    {
        wrappers.add(new EventTrackingWrapper(tempselectedvalues));
        
    }
    
         system.debug('iiiiii'+wrappers); 
         
    
    }
    
    public class EventTrackingWrapper{
      
       public list<String> tempselectedvalues {get;set;}
      
   
       public EventTrackingWrapper(list<String> tsv)
  {
   this.tempselectedvalues=tsv;
   
  }
 }
    
    
}