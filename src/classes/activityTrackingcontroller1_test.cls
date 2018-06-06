@isTest
public class activityTrackingcontroller1_test
 {
        static testMethod void myPage_Test()
            {
            PageReference pageRef = Page.activityTracking1;
            Test.setCurrentPageReference(pageRef);
            activityTrackingcontroller1 actc= new activityTrackingcontroller1();
            actc.saveDetails();
            actc.showSubActivities();
            actc.showSubActivityTypes();
            actc.getValues();
            
            //activityTrackingcontroller1.activityTrackingWrapper obj= new activityTrackingcontroller1.activityTrackingWrapper();
           
           
           
            }

           
           
           
            }