public with sharing class CCW_UploadFileController {
 
    /*
    *   attachment
    */
    public Attachment tAttachment{get;set;}
 
    /*
    *   constructor
    */
    public CCW_UploadFileController(){
 
        //initialize attachment container
        this.tAttachment = new Attachment();
 
    }
 
    /*
    *   upload file
    */
    public void doUploadFile(){
 
        //create new instance of uploaded file
        Attachment a = this.tAttachment.clone(false, true, false, false);
        a.OwnerId = UserInfo.getUserId();
        //record attachment associated with
        a.ParentId = '001i000001MfJVT';
 
        //clear body of uploaded file to remove from view state
        this.tAttachment.Body = null;
 
        //create the attachment
        Database.Insert(a);
 
    }
 
}