public with sharing class dysoqlEx_controller {

    public PageReference goToAnotherPage() {
        PageReference pageRef = Page.SearctDynamic1;
     pageRef.getParameters().put('SearchStr',SearchStr);
     return PageRef;
    }

public list<string> l{get; set;}

    public List<account> getStList() {
        return StList1;
    }


public List<sobject> StList1{get; set;}
    public Void Search() {
        StList1=new List<sobject>();
        String strTest = SearchStr;

l=new list<string>();
l = strTest.split('\\.');


        system.debug('++++++'+SearchStr);
        string query='Select Id,'+l[0]+' from '+ l[1];
        system.debug('==Query='+query);
        StList1=database.Query(query);
        system.debug('***Data****'+StList1);
        //StList=database.Query('Select Id,Name from Student__c limit 10'); 
        system.debug('ppppp'+l);
        
    }


    public String SearchStr { get; set; }
    
}