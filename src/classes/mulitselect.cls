public with sharing class mulitselect{

    public String getunSelectedValues1 { get; set; }

 
    Set<String> originalvalues = new Set<String>{'A','B','C','D','E','F','G'};
    Public List<string> leftselected{get;set;}
    Public List<string> rightselected{get;set;}
    Set<string> leftvalues = new Set<string>();
    Set<string> rightvalues = new Set<string>();
     
    public mulitselect(){
        leftselected = new List<String>();
        rightselected = new List<String>();
        leftvalues.addAll(originalValues);
        getunSelectedValues1();
    }
     
    public PageReference selectclick(){
        rightselected.clear();
        for(String s : leftselected){
            leftvalues.remove(s);
            rightvalues.add(s);
        }
        return null;
    }
     
    public PageReference unselectclick(){
        leftselected.clear();
        for(String s : rightselected){
            rightvalues.remove(s);
            leftvalues.add(s);
        }
        return null;
    }
 
    public List<SelectOption> getunSelectedValues(){
        List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        for(string s : tempList)
            options.add(new SelectOption(s,s));
        return options;
    }
 
    public List<SelectOption> getSelectedValues(){
        List<SelectOption> options1 = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(rightvalues);
        tempList.sort();
        for(String s : tempList)
            options1.add(new SelectOption(s,s));
        return options1;
    }
    public List<SelectOption> getunSelectedValues1(){
         List<SelectOption> options1 = new List<SelectOption>();
         map<string,user> kk=new map<string,user>([select id, name from user]);
         for(Id recId : kk.keySet()){
         options1.add(new SelectOption(kk.get(recId).id,kk.get(recId).Name));
         //options1.add(new SelectOption(kk.get(recId).id),kk.get(recId).Name);
         //options1.add(new SelectOption(recId.id,recId.Name));
         system.debug('ttt'+options1);
         system.debug('ggg'+kk.get(recId).Name);
        //System.debug(kk.get(recId).Name + kk.get(recId).id);
        //}
       // List<string> tempList = new List<String>();
        //tempList.addAll(leftvalues);
        //tempList.sort();
        //for(string s : tempList)
            //options.add(new SelectOption(s,s));
            }
            system.debug('mmmm'+options1);
        return options1;
    }
}