public with sharing class MultiSelectListCls {
Map<id,String> LeftOptionsMap;
Map<id,String> RightOptionsMap;

    public List<selectOption> RightOptions;

    public List<String> RemovedValue { get; set; }

    public List<selectOption> LeftOptions;

    public List<String> SelectedValue { get; set; }


    public PageReference remove() {
    
     for(String s:RemovedValue ){
    LeftOptionsMap.put(s,RightOptionsMap.get(s));
    RightOptionsMap.remove(s);
    
   
    }
        return null;
    }


    public PageReference add() {
  
    system.debug('@@@@@@@@@@@@@@@111'+SelectedValue );
    
    for(String s:selectedValue){
    RightOptionsMap.put(s,LeftOptionsMap.get(s));
    LeftOptionsMap.remove(s);
    
    system.debug('@@@@@@@@@@@@@@@'+RightOptionsMap);
    }
    
        return null;
    }
    
    
    public  MultiSelectListCls(){
    
   SelectedValue =new List<string>();
    LeftOptions=new List<selectOption>();
      LeftOptionsMap=new Map<id,String>();
      RightOptionsMap=new Map<id,String>();  
    RightOptions=new List<selectOption>();
    callOptions();
    
    }
    
    
    public void callOptions(){
    
    List<user> lstAcc=[select id, name from user limit 10];
    
    for(user a:lstAcc){
    LeftOptionsMap.put(a.id,a.name);
    }
    
     
    
    }

    public List<selectOption> getLeftOptions(){
    
    LeftOptions=new List<selectOption>();
    
    for(id id:LeftOptionsMap.keySet()){
    LeftOptions.add(new selectOption(id,LeftOptionsMap.get(id)));
    }
    
    return LeftOptions;
    }
   
   public List<selectOption> getRightOptions(){
    
    RightOptions=new List<selectOption>();
    
    for(String id:RightOptionsMap.keySet()){
    RightOptions.add(new selectOption(id,RightOptionsMap.get(id)));
    
    }
    return RightOptions;
    
    
    }

}