@isTest
public class activityTrackingcontroller3_test
 {
        static testMethod void myPage_Test()
            {
                 Activity_Tacking_System__c atc=new Activity_Tacking_System__c();
                 atc.ctrla51__Planed_Hours__c=123;
                 atc.ctrla51__Actual_Hours__c=528; 
                 insert atc;
                 
Test.startTest();

//Inform Test Class to set current page as your Page where Extension is used
   PageReference pageRef = Page.activityTracking3;
            Test.setCurrentPageReference(pageRef);
//Test.setCurrentPage(Page.activityTracking3);

//Instantiate object of "ApexPages.StandardSetController"by passing array of records
//ApexPages.StandardSetController stdSetController = new ApexPages.StandardSetController(atc);

//Now, create Object of your Controller extension by passing object of standardSetController
//activityTracking3 ats=new activityTracking3(stdSetController );

//Here you can test all public methods defined on Extension "ext"
//..... your code

//Finish Test
Test.stopTest();
           
           
           
            }

           
           
           
            }