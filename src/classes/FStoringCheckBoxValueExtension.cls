public class FStoringCheckBoxValueExtension {
    private  Contact contact;
    public String Indiaplaceist{get;set;}
    public String lastname{get;set;}
    public String Indiaplace2nd{get;set;}
    
    
    public String Newyorkplaceist{get;set;}
    public String Newyorkplace2nd{get;set;}
   
    public String resultString{get;set;}
    public FStoringCheckBoxValueExtension(ApexPages.StandardController controller) {
        Contact contact = new Contact();
    }
    public void savingCheckBoxValue()
    {   
        
        
        //upsert acct;
        //System.debug('@@@@@@@@@@@@@@@@@@@Indiaplace@@@@@@@@@@'+Indiaplace);
         System.debug('@@@@@@@@@@@@@@@@@@@resultString @@@@@@@@@@'+resultString );
         Contact contact = new Contact();
        //contact.PlacesVisisted__c = resultString ;
        contact.LastName= lastname;
        insert contact;
    }    
    public PageReference getSelected(){
        System.debug('@@@@@@@@@@@@@@@@@@@Indiaplace@@@@@@@@@@'+Indiaplaceist);
        if(Indiaplaceist == 'true'){
            if(resultString !=null){
                resultString = resultString+' '+ 'Agra'; 
            }
            else{
                resultString = 'Agra'; 
             }      
           System.debug('@@@@@@@@@@@@@@@@@@@resultStringtestIf @@@@@@@@@@'+resultString ); 
         }
         else if(Indiaplace2nd == 'true'){
              if(resultString !=null){
                  resultString = resultString+' '+'Delhi' ;
              }
              else{
                  resultString = 'Delhi' ;  
              }     
          }
         else if(Newyorkplaceist == 'true') {
             if(resultString !=null){
                resultString = resultString+' '+'Newyork' ;  
             }
             else{
                 resultString = 'Newyork' ;  
              }   
         } 
         else if(Newyorkplace2nd == 'true') {
             if(resultString !=null){
                 resultString = resultString+' '+'Washington';
             }
              else{
                  resultString = 'Washington';
               }
         }
         else{
         }   
         
        return null;
    }
}