@RestResource(urlMapping='/Training1/*')
global with sharing class TrainingService1{
    @HttpGet
    global static List<ctrla51__Training__c> getTraining(){
        RestRequest req=RestContext.request;
            string TrainingId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);

            List<ctrla51__Training__c> Trainings=new List<ctrla51__Training__c>();
        if(TrainingId.length()> 0){
            
           
            Trainings=[select name,id, City__c  from Training__c where id=:TrainingId];
        }
        else{
             Trainings=[select name,id, City__c  from Training__c limit 10];    
        }
        return  Trainings;
            

    }
}