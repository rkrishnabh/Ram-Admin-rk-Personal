public with sharing class ContactController {

    @AuraEnabled
    public static List<Contact> findAll() {
        
        return [SELECT id, name, phone FROM Contact LIMIT 10];
     
    }
     

    @AuraEnabled
    public static List<Contact> findByName(String searchKey) {
        String name = '%' + searchKey + '%';
        return [SELECT id, name, phone FROM Contact WHERE name LIKE :name LIMIT 2];
    }

    @AuraEnabled
    public static Contact findById(String contactId) {
        return [SELECT id, name, title, phone, mobilephone, Account.Name
                    FROM Contact WHERE Id = :contactId];
    }

}