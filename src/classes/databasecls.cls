public class databasecls{

    public void insertAccount(){
        
        Account acc = new Account();
        
        acc.Name = 'Test Account';
        acc.Phone='21341313436';
        //Here Rating field is picklist it is does't contain "VaryHot" value & we can not insert this value
        //through page layout but programatically we insert any kind of data or Values like "Very Hot" 
        acc.Rating='Very Hot';
        acc.Country__c = 'India';
        
        insert acc;
        
        
        
    }
    
    public static void insertTraining(){
        //Here Faculty field is in lookup realation and it's is parent Record of Training field
        //In this case we first insert parent record first and moveon to Child Record like Training
        Faculty__c fac = new Faculty__c();
        fac.Name='Charan';
        insert fac;
        
        
        //Clicking on New button
        Training__c tr = new Training__c();
        
        tr.Name = 'Salesforce';
        tr.City__c = 'Hyderabad';
        tr.Location__c='Ameerpet';
        tr.Lab_Facility__c = false;
        tr.Faculty__c = fac.Id;
        tr.Duration_Days__c = 43;
        insert tr;
    
    }
    
    public static void insertTrainingRec(string fId){
        
        //Clicking on New button
        Training__c tr = new Training__c();
        
        tr.Name = 'Talend';
        tr.City__c = 'Hyderabad';
        tr.Location__c='Ameerpet';
        tr.Lab_Facility__c = false;
        tr.Faculty__c = fId;
        tr.Duration_Days__c = 43;
        insert tr;
    
    }


    public static void updateRecord(){
        
        Account acc = new Account(Id='001i000000if08L');
        acc.fax='1234567890';
        update acc;
    
    }


    public static void deleteRecord(){
        
        Account acc = new Account(Id='001i000000if08L');
        delete acc;    
    }




}