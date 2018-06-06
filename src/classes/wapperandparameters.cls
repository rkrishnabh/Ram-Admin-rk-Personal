public with sharing class wapperandparameters {

    public String saveMethod { get; set; }
    
    public list<wapperclass> wapcls{get;set;}
    public list<Account> showAcc{get;set;}
    
    public wapperandparameters(){
       wapcls=new list<wapperclass>();
       for(Account acc:[select id,name from account]){
       
       wapcls.add(new wapperclass(acc) );
       
       
       }
    
    
    
    }
    
    public void show1(){
    
    showAcc=new  list<Account>();
    for(wapperclass wc:wapcls){
    if(wc.check == true){
    showAcc.add(wc.acc1);
    }
    
    
    }
    }
    public pagereference show(){
    show1();
    
    PageReference pgref = new PageReference('/apex/wapperandparameters1');
    return pgref;
    }
    
                       

    
    public class wapperclass{
    
    public Account acc1 {get;set;}
    public boolean check {get;set;}
    
    
    //constructor  for wapperclass
    
    public wapperclass(Account a){
        acc1=a;
        check=false;
        
        
    }
    
    
    
    }





}