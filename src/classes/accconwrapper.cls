public with sharing class accconwrapper {
	public String strJSON;

    public class accconwrapper1{
    
    public account acc {get;set;}
    public contact con {get;set;}
    
    public accconwrapper1(account a,contact c){
    acc=a;
    con=c;
    }
    }
    public List<accconwrapper1> items {get;set;}
      
      
      public accconwrapper()
      {
      items=new List<accconwrapper1>();
      List<account> listacc=[select id,name from account];
      system.debug('Siiiii'+listacc.size());
      List<contact> listcon=[select id,name from contact];
      system.debug('Siiiii'+listcon.size());
          
         
      for(integer i=0;i< 10;i++ ){
      
      items.add(new accconwrapper1(listacc[i],listcon[i]));
      
      }
      strJSON = JSON.serialize(items);
       system.debug('==='+strJSON);
      
      
      }
    
    
    
    
}