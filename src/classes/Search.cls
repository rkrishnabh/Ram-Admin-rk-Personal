public class Search
{
      public String searchKeyWord {get;set;}
      public String searchCategory;
      public List<String> objectFields {get;set;}    
      public sObject sObjectToBind {get;set;}  
      public List<sObject> result {get;set;}
      Public String message;
      //Rama custmize the code
      public string r='name';
     
      public search()
      {
            searchCategory = 'account';
            message = System.currentPagereference().getParameters().get('SearchStr');
            system.debug('======'+message);
      }
     
      public void find()
      {    
            /*    Getting fields for the sObject    */
            message = System.currentPagereference().getParameters().get('SearchStr');
            system.debug('======');
        objectFields =  new List<String>();  
        Map<String , Schema.SObjectType> globalDescription = Schema.getGlobalDescribe();   
        Schema.sObjectType sObjType = globalDescription.get(searchCategory);
        system.debug('---'+sObjType);             
        sObjectToBind = sObjType.newSObject();  
        Schema.DescribeSObjectResult r1 = sObjType.getDescribe();  
          
        Map<String , Schema.SObjectField> mapFieldList = r1.fields.getMap();  
        for(Schema.SObjectField field : mapFieldList.values())  
        {  
            Schema.DescribeFieldResult fieldResult = field.getDescribe();  
            if(fieldResult.isAccessible())  
            {  //ram cusmization started
                    if(r==fieldResult.getName()){
            objectFields.add(r);
                //objectFields.add(fieldResult.getName());
                }
            }  
            system.debug('@@@@@@'+objectFields);
            
        }  
       
        /*    Building Query with the fields    */
        Integer i = 0;
        String fieldsToFetch = '';
        for(String temp:objectFields)
        {       
            Integer len = objectFields.size();
            if(i==len-1)
            {
                  fieldsToFetch = fieldsToFetch + temp;
            }
            else
            {
                  fieldsToFetch = fieldsToFetch + temp + ',';
            }
            i++;
        }
            String sql = 'Select ' + fieldsToFetch + ' From ' + searchCategory + ' WHERE Name LIKE \'%' + searchKeyword + '%\'';
            result = Database.Query(sql);
      }
     
      /*    Getting and Setting values for SearchCategory radio button    */
      public String getsearchCategory()
      {
            return searchCategory;
      }
     
      public void setsearchCategory(String searchCategory)
      {
            this.searchCategory = searchCategory;
      }    
}