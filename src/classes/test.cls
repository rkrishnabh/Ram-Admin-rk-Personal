public class test {
  


public static void test1(){

List<Account> accountList = new List<Account>();
List<Contact> contactList = new List<Contact>();

for (Integer i = 0; i < 10; i++) {
    accountList.add(new Account(Name = 'Boards Test Accout ' + i));
    contactList.add(new Contact(
            FirstName = 'Boards ' + i,
            LastName = 'Test Contact'
    ));
}

List<sObject> objects = new List<sObject>();
objects.addAll((List<sObject>)(accountList));
objects.addAll((List<sObject>)(contactList));
insert objects;

}

   
   

}