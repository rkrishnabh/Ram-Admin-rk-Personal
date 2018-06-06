public with sharing class activityTrackingData{

   public list<ctrla51__Activity_Tacking_System__c> atsData{get;set;}
    public list<SelectOption> useroptions {get;set;}
    public set<user> userlist1=new set<user>([select id,name from user]);
    
    
   
    public String selectedUser { get; set; }
    Public List<user> leftselected{get;set;}

    Public List<user> rightselected{get;set;}

    Set<user> leftvalues = new Set<user>();

    Set<user> rightvalues = new Set<user>();
    
    
    
    

    
    
    public  activityTrackingData (){
    
    leftselected = new List<user>();

        rightselected = new List<user>();

        leftvalues.addAll(userlist1);
        system.debug('pppp'+leftvalues);
    
    }
    public PageReference selectclick(){
    
    system.debug('gggggg');
    
    

        rightselected.clear();

        for(user s : leftselected){

            leftvalues.remove(s);

            rightvalues.add(s);
            system.debug('lll'+rightvalues);

        }

        return null;

    }

     

    public PageReference unselectclick(){

        leftselected.clear();

        for(user s : rightselected){

            rightvalues.remove(s);

            leftvalues.add(s);

        }

        return null;

    }
    
    
    
    public List<SelectOption> getunSelectedValues(){

        List<SelectOption> options = new List<SelectOption>();

        List<user> tempList = new List<user>();

        tempList.addAll(leftvalues);

        tempList.sort();
        system.debug('ooo'+tempList);

        for(user s : tempList)

            options.add(new SelectOption(s.id,s.name));

        return options;

    }


    public List<SelectOption> getSelectedValues(){

        List<SelectOption> options1 = new List<SelectOption>();

        List<user> tempList = new List<user>();

        tempList.addAll(rightvalues);

        tempList.sort();
        system.debug('nnn'+tempList);
        for(user s : tempList)

            options1.add(new SelectOption(s.id,s.name));

            system.debug('11111'+options1);
        return options1;

    }






    
    /*userlist1.sort();
    system.debug('kkkk'+userlist1);
    useroptions =new list<selectoption>();
    useroptions.add(new selectoption('--Select User---','--Select User--'));
     // useroptions.add(new selectOption('--Select Activity--','--Select Activity--'));
      
      //for(user userlist:[ select id,name from user])
      for(user userlist:userlist1)
      {
            useroptions.add(new selectoption(userlist.id,userlist.name)); 
            system.debug('-----'+userlist);   
      
      }
   
   
    system.debug('-----selected user is----'+selectedUser );
    
    
    
    public void displayData(){
    
    atsData =new list<ctrla51__Activity_Tacking_System__c>([select ctrla51__Sub_Activity_Type__c,id from ctrla51__Activity_Tacking_System__c where id=:selectedUser ]);
    system.debug('======'+atsData);
    
    }*/
    
    
   



}