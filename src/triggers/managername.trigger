trigger managername on Opportunity (after insert) { 
Opportunity i=[select ownerid, id,Owner.email,Owner.name from opportunity where id=:trigger.newMap.keySet()];

system.debug('ssss'+i);
for (Opportunity o : Trigger.new) 

{ 
if(o.StageName=='Closed Won'){  
String userEmail = i.Owner.email; 
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
String[] toAddresses = new String[] {userEmail}; 
mail.setToAddresses(toAddresses); 
mail.setSubject('Automated email: Contact created'+'==='+o.name); 
String body = 'won'; 
mail.setPlainTextBody(body); 
Messaging.sendEmail(new Messaging.SingleEMailMessage[]{mail});
} 
} 
}