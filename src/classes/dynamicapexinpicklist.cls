public with sharing class dynamicapexinpicklist {


    public map<string,schema.SobjectType> mobjects {set;get;}
    public list<string> objlist{set;get;}
    public list<selectoption> objects {set;get;}
    public string selectedobj {set;get;}
    public string objDescription {get;set;}
            
            public dynamicapexinpicklist(){
            
            mobjects=schema.getGlobalDescribe();
            objlist=new list<string>();
            objects=new list<selectoption>();
            objlist.addAll(mobjects.keyset());
            objlist.sort();
            selectoption p=new selectoption('None','--None--');
            system.debug('00000'+objlist);
            objects.add(p);
            for(string s:objlist){
            selectoption op=new selectoption(s,s);
            
            objects.add(op);
            
            }
            }
       public void details(){
       
       
       schema.DescribesobjectResult myobj=mobjects.get(selectedobj).getDescribe();
       objDescription=''+myobj;
       }
            
    
    

    



}