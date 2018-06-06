public with sharing class ActivityTracking {

    public PageReference saveDetails() {
    System.debug('*****Calling Method******');
   
        return null;
    }


     public Date dat {get;set;}
    public String wrp { get; set; }
    public list <ctrla51__Activity_Tacking_System__c> PlanedHours {get;set;}
    
    
    public PageReference saceRec() {
    System.debug('*****Calling Method******');
    /*list<ctrla51__Activity_Tacking_System__c> objList = new list<ctrla51__Activity_Tacking_System__c>();
    System.debug('********activitytrackwrapper Values***********'+activitytrackwrapper);
    for(activityTrackingWrapper wrp : activitytrackwrapper){
     System.debug('*******************'+wrp.satid1.name);
     System.debug('*******************'+wrp.satid1.ctrla51__Palened__c);
     //System.debug('*******************'+wrp.satid1.xyz);
     ctrla51__Activity_Tacking_System__c obj = new ctrla51__Activity_Tacking_System__c();
     //obj.name = wrp.satid1.name;
     //obj.ctrla51__Planed_Hours__c= wrp.satid1.ctrla51__Palened__c;
     objList.add(obj);
     system.debug('----'+objList);
    }
   // insert objList;
    update objList;*/
        return null;
    }




    

    public String displaySubActRecords { get; set; }
   

        
    public PageReference displaySubActRecords() {
    
     activitytrackwrapper=new list<activityTrackingWrapper>();
    
       for(ctrla51__Sub_Activity_Type__c mmm:[select id,Name from ctrla51__Sub_Activity_Type__c where ID IN: satid ])
       
   
        activitytrackwrapper.add(new activityTrackingWrapper(mmm));
           
   system.debug('pppp'+activitytrackwrapper);
   
 System.debug('ppppppppppp*'+activitytrackwrapper.size());
 //saveDetails();
return null;
}




      



  public list<activityTrackingWrapper> activitytrackwrapper{get;set;}
     
    public list<String>  satid { get; set; }
  
   
    public ActivityTracking(){
    
    }
     
  
    public String Acctivity { get; set; }

    List<selectOption> listActivityt= new List<selectOption>();
    public List<selectOption> getActivityData() {
    listActivityt.clear();
    listActivityt.add(new selectOption('Select Activity','--Select Activity--'));
    for(ctrla51__Activity__c objAct : [select Id,name from ctrla51__Activity__c])
        {
            listActivityt.add(new selectOption(objAct.id,objAct.name));
            listActivityt.sort();
        }
            return listActivityt;
                                                 }

public String AcctivityTypes { get; set; }

        List<selectOption> ActivityTpes = new List<selectOption>();
        public List<selectOption> getActivityTpesData() {

        ActivityTpes.clear();
        ActivityTpes.add(new selectOption('–ActivityType–','–ActivityType–'));
        for(ctrla51__Activity_Type__c objActivityType : [select Id,name from ctrla51__Activity_Type__c where ctrla51__Activity__r.id=:Acctivity ORDER BY name ASC])
            {
              ActivityTpes.add(new selectOption(objActivityType.id,objActivityType.name));
            }
             return ActivityTpes;

                                                         }

        List<selectOption> subActivityTpes = new List<selectOption>();
        public List<selectOption> getsubActivityTpesData()
         {
        subActivityTpes.clear();
        subActivityTpes.add(new selectOption('–subActivityTpes –','–subActivityTpes –'));
        for(ctrla51__Sub_Activity_Type__c objsubActivityType : [select Id,name from ctrla51__Sub_Activity_Type__c where ctrla51__Activity_Type__r.id=:AcctivityTypes ORDER BY name ASC])
        {
            subActivityTpes.add(new selectOption(objsubActivityType.id,objsubActivityType.name));
        }
            return subActivityTpes;

         }

             //Wrapper class
            public class activityTrackingWrapper
            {
             public ctrla51__Sub_Activity_Type__c satid1 {get;set;}
             public string PalenedHours {get;set;} 

             public activityTrackingWrapper(ctrla51__Sub_Activity_Type__c satid1)
      
            {
            this.satid1=satid1;
            PalenedHours ='';
            
            }
              }
}