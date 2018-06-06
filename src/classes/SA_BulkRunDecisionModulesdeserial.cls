public with sharing class SA_BulkRunDecisionModulesdeserial {
    //public List<ApplicationV3> lstlead{get;set;}
    public static void runDecisionRules(){
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'SourceDecisionFile' LIMIT 1];
        String inputJSON = sr.Body.toString();
        System.debug('@@@ inputJSON: ' + inputJSON);
        
       ApplicationsList objApplicationsList = (ApplicationsList)JSON.deserialize(inputJSON, ApplicationsList.class);
        System.debug('@@@ objApplicationsList: ' + objApplicationsList);
       
  
     }   
       
    
   class ApplicationsList{
        List<ApplicationV3> Applications {get; set;}
    }
    
    class ApplicationV3{
            public string applicationID {get; set;}
            public integer strategyId {get; set;}
            public string businessName {get; set;}
            public string State {get; set;}
            public decimal averageMonthlySales {get; set;}
            public decimal annualRevenue {get; set;}
            public decimal loanAmount {get; set;}
            public integer timeInBusiness {get; set;}
            public string LeadSource {get; set;}
    }
        
        
        
        }