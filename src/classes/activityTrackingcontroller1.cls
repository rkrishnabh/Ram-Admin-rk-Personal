public with sharing class activityTrackingcontroller1 {

    public String wrp { get; set; }
    list<ctrla51__Activity_Tacking_System__c> catsList = new list<ctrla51__Activity_Tacking_System__c>();
    public PageReference saveDetails() {
    try{
     System.debug('=========save method=======>'+activitytrackwrapper.size());
 
    for(activityTrackingWrapper wrp :activitytrackwrapper){
    System.debug('=======name=======>'+wrp.satid1.name);
    System.debug('=======name=======>'+wrp.satid1.ctrla51__Palened__c);

    ctrla51__Activity_Tacking_System__c cATS = new ctrla51__Activity_Tacking_System__c();
    //cATS.ctrla51__Sub_Activity_Type__c = wrp.satid1.name;
    cATS.ctrla51__Planed_Hours__c = wrp.satid1.ctrla51__Palened__c;
    cATS.ctrla51__Activity_Date__c = wrp.satid1.ctrla51__Activity_Date__c;
    catsList.add(cATS);
    
    }
    if(catsList.size() > 0){
        insert catsList;
        PageReference reference=new PageReference('/a0L');
        reference.setRedirect(true);
        return reference;

    }
    }Catch(exception ex){
    
    }

        return null;
    }


    public String planedhours { get; set; }

    public String dat { get; set; }
    public list<activityTrackingWrapper> activitytrackwrapper{get;set;}
    public list<String>  satid { get; set; }
    public set<id> selectedSubActivityTypeids{get;set;}
    
    public PageReference getValues() {
        activitytrackwrapper=new list<activityTrackingWrapper>();
        System.debug('********in side if***********'+selectedSubActivityType);
        string str = selectedSubActivityType;
        str = str.remove('[');
        str = str.remove(']');
        System.debug('********str**********'+str);
        if(str != null && str != ''){
        for(String selsatids : str.split(', ')){
            selectedSubActivityTypeids.add(selsatids);
        }
        }
        //if(activitytrackwrapper !=null){
       if(selectedSubActivityTypeids.size() > 0){
       for(ctrla51__Sub_Activity_Type__c mmm:[select id,Name,ctrla51__Palened__c,ctrla51__Activity_Date__c from ctrla51__Sub_Activity_Type__c where ID =: selectedSubActivityTypeids]){
           System.debug('*******************'+mmm.name);
           activitytrackwrapper.add(new activityTrackingWrapper(mmm));
       }
       }
       
   
        
        //}
return null;
        
    }


    public list<SelectOption> subActivityTypeItems { get; set; }

    public String selectedSubActivityType { get; set; }

    public PageReference showSubActivityTypes() {
    subActivityTypeItems.clear();
        subActivityTypeItems.add(new selectOption('--Select Sub Activity Type--','--Select Sub Activity Type--'));
    for(ctrla51__Sub_Activity_Type__c objsubActivityType : [select Id,name from ctrla51__Sub_Activity_Type__c where ctrla51__Activity_Type__r.id=:selectedActivityType ORDER BY name ASC])
        {
            subActivityTypeItems.add(new selectOption(objsubActivityType.id,objsubActivityType.name));
        }
    
        return null;
    }


    public PageReference showSubActivities() {
    subActivityTypeItems.clear();
        activityTypeItems.add(new selectOption('--Select Activity Type--','--Select Activity Type--'));
        for(ctrla51__Activity_Type__c objActivityType : [select Id,name from ctrla51__Activity_Type__c where ctrla51__Activity__r.id=:selectedActivity ORDER BY name ASC])
            {
              activityTypeItems.add(new selectOption(objActivityType.id,objActivityType.name));
            }
        return null;
    }


    public list<SelectOption> activityTypeItems { get; set; }

    public String selectedActivityType { get; set; }

    public list<SelectOption> activityItems { get; set; }

    public String selectedActivity { get; set; }
    
    public activityTrackingcontroller1(){
    selectedSubActivityTypeids = new set<id>();
        subActivityTypeItems = new list<SelectOPtion>();
        activityItems = new list<SelectOption>();
        activityTypeItems = new list<SelectOption>();
         activityItems.add(new selectOption('--Select Activity--','--Select Activity--'));
        for(ctrla51__Activity__c objAct : [select Id,name from ctrla51__Activity__c limit 100])
        {
            activityItems.add(new selectOption(objAct.id,objAct.name));
            activityItems.sort();
        }
    }
    
    //Wrapper Class
      public class activityTrackingWrapper
            {
             public ctrla51__Sub_Activity_Type__c satid1 {get;set;}
             public string PalenedHours {get;set;} 
             public date ActivityDate {get;set;}

             public activityTrackingWrapper(ctrla51__Sub_Activity_Type__c satid1)
      
            {
            this.satid1=satid1;
           
            
            }
              }
    
}