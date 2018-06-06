public class sendEmail{


 

 
@AuraEnabled
public static void SendingEmail(String[] email,String str){

    String[] recipients = email;
    Messaging.reserveSingleEmailCapacity(recipients.size());
    Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
    msg.setToAddresses(recipients);
    msg.setSubject(str);
    msg.setHtmlBody('Test body including HTML markup');
    msg.setPlainTextBody('Test body excluding HTML markup');
    msg.setSaveAsActivity(false);
    msg.setUseSignature(false);
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] {msg}, false);
    
 

}
 
}