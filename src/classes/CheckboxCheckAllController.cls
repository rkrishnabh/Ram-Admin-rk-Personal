public class CheckboxCheckAllController {
 
 public List<ContactWrapper> allContacts { get; set; }
 public Boolean allChecked { get; set; }
 
 public CheckboxCheckAllController () {
  allContacts = new List<ContactWrapper>();
  allChecked = false;
  
  for(Contact contact: [select Name, Title, Department, Email from Contact limit 5 ]){ 
   allContacts.add(new ContactWrapper(contact));
  } 
 }
 
 public PageReference CheckAll(){
  
  for(ContactWrapper contact : allContacts){
   contact.selected = allChecked;
  }
  
  return null;
 }
 
 public PageReference ProcessSelectedContacts(){
  
  for (ContactWrapper contactWrapper : allContacts ){
   if(contactWrapper.selected == true){
   system.debug('@@@'+contactWrapper.con.id);
    /* Do Some Processing */
   }
  }
  
  return null;
 }

 public class ContactWrapper {
  
  public Contact con{get; set;}
        public Boolean selected {get; set;}
        
        public ContactWrapper(Contact c){
            con = c;
            selected = false;
        }
        
 }
}