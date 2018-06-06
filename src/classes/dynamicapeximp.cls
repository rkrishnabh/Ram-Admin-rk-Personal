public with sharing class dynamicapeximp {
    
    
    public map<String,schema.sobjectType> mobjects {get;set;}
    
    public map<string,schema.sobjectfield> mfields;
    public list<string> fields{get;set;}
    public set<string> fselected {get;set;}
    public set<string> fnotselected {get;set;}
    
    public list<SelectOption> fsoptions{get;set;}
    public list<SelectOption> fnsoptions{get;set;}
    
    public list<string> sfields {get;set;}
    public list<string> rfields {get;set;}
    
    
    public list<SelectOption> objects {get;set;}
    public list<string> objlist {get;set;}
     
    public string selectedobj {get;set;}
    public string objDescription {get;set;}
    
    public string query{get;set;}
     public list<sobject> mydata{get;set;}
     
     public list<string> myfields{set;get;}
    
    
    public map<string,schema.sobjectfield> mgields;
    
   
    
    

    
    
    public  dynamicapeximp(){
        
        //this map returns all the objects as key in a stiring format, and value pairs gives the properties of the that object
      mobjects =schema.getGlobalDescribe();
        objects=new list<SelectOption>();
        fields=new list<string>();
        fselected=new set<string>();
        fnotselected=new set<string>();
        fsoptions=new list<SelectOption>();
        fnsoptions=new list<SelectOption>();
        objlist=new list<string>();
        sfields=new list<string>();
        rfields=new list<string>();
        
       mydata=new list<sobject>();
        
        myfields=new list<string>();
        
        //the set gives the list of objects
        objlist.addAll(mobjects.keySet());
       
        objlist.sort();
        system.debug('object list'+objlist);
        SelectOption p=new SelectOption('Select Object','Select Object');
         objects.add(p);
        for(string s:objlist){
            SelectOption op=new SelectOption (s,s);
            objects.add(op);
            
        }
                }
                
                
    public void details(){
        
        
        schema.describesobjectResult myobj=mobjects.get(selectedobj).getDescribe();
        objDescription= ''+myobj;
        mfields=mobjects.get(selectedobj).getDescribe().fields.getmap();
        fields.addAll(mfields.keySet());
        fields.sort();
        fnotselected.addAll(fields);
        show();
    }
    public void show(){
        fnsoptions.clear();
        fsoptions.clear();
        for(string s:fnotselected){
            SelectOption op=new SelectOption(s,s);
            fnsoptions.add(op);
        }
        for(string s1:fselected)
        {
            SelectOption op1=new SelectOption(s1,s1);
            fsoptions.add(op1);
            
        }        
        
    }
    
    public void addFields(){
        fnotselected.removeAll(sfields);
        fselected.addAll(sfields);
        show();
        
        
    }
    public void removeFields(){
        
        fnotselected.addAll(rfields);
        fselected.removeAll(rfields);
        show();
    }
    
    public void queryMydata(){
        
         query='select id';
         myfields.addAll(fselected);
         
        for(string s:fselected){
            query=query+','+s;
        }
        query=query+' from '+selectedobj;
        mydata=database.query(query);
    }
    
    
    
    
    
    
    
    
}