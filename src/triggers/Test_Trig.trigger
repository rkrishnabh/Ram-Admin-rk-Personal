trigger Test_Trig on ctrla51__Batch__c (after update) {
List<ctrla51__Batch__c> BatchList=new List<ctrla51__Batch__c>();
for(ctrla51__Batch__c batch:Trigger.New)
{
 BatchList.add(batch); 
}
}