public class user1{
    public list<selectOption> items{get;set;}
    
    public user1(){
    
    
    string profileid=userInfo.getProfileID();
    system.debug('*********'+profileid);   
       
   
         List<User> luser=[select id,name,profileid from user where profileid =: profileid];
         system.debug('-----'+luser); 
         items=new list<selectOption>();
         items.add(new selectOption('','----None----'));  
         for(user u:luser){
         items.add(new selectoption(u.id,u.name));
         }
                        
    }
    


}