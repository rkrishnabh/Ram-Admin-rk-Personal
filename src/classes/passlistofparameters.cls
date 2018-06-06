public with sharing class passlistofparameters {


public passlistofparameters (){

 /*list<account> r=[select id,name from account];
 set<id> acid=new set<id>();
 
 for(account a:r){
 
   acid.add(a.id);     
 }
system.debug('----'+acid);*/
}
public set<id> acid=new set<id>();
public void gotonewpage()
{     
list<account> r=[select id,name from account];
 
 
 for(account a:r){
 
   acid.add(a.id);     
 }
system.debug('----'+acid);
     /*PageReference pageRef = Page.existingPageName;
     pageRef.getParameters().put('msg','success');
     return PageRef*/
}



}