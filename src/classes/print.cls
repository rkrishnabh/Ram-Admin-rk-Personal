public with sharing class print {
  public List<ctrla51__Training__c> TrainingList {get;set;}
    
    public print () {
        TrainingList = new List<ctrla51__Training__c>();
        TrainingList = [SELECT Name,id  FROM ctrla51__Training__c];
    }

}