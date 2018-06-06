public class accountRelatedContacts {
     @AuraEnabled
    public static List<Account> findAll() {
        
        return [SELECT id, name, phone FROM account LIMIT 10];
     
    }
     

    @AuraEnabled
    public static List<account> findByName(String searchKey) {
        String name = '%' + searchKey + '%';
        return [SELECT id, name, phone FROM account WHERE name LIKE :name LIMIT 2];
    }

    @AuraEnabled
    public static contact findById(String accountId) {
        system.debug('@@@AccountId');
        return [SELECT id, name, title, phone, mobilephone, Account.Name
                    FROM Contact WHERE Account.Id = :accountId];
    }


}