public with sharing class SA_BulkRunDecisionModules {
    //public List<ApplicationV3> lstlead{get;set;}
    public static void runDecisionRules(){
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'SourceDecisionFile' LIMIT 1];
        String inputJSON = sr.Body.toString();
        System.debug('@@@ inputJSON: ' + inputJSON);
        
        //ApplicationV3 objApplicationV3 = (ApplicationV3)JSON.deserialize(inputJSON, ApplicationV3.class);
        //system.debug('____'+objApplicationV3 );
        //ApplicationV3 objApplicationV3 = (ApplicationV3)JSON.deserialize(inputJSON, ApplicationV3.class);
        //system.debug('____'+objApplicationV3 );
       List<ApplicationV3> lstlead=new List<ApplicationV3>();
        JSONParser parser = JSON.createParser(inputJSON);
    while (parser.nextToken() != null) { 
     if (parser.getCurrentToken() == JSONToken.START_ARRAY) {       
       while (parser.nextToken() != null) {
          if (parser.getCurrentToken() == JSONToken.START_OBJECT) {
            ApplicationV3 le = (ApplicationV3)parser.readValueAs(ApplicationV3.class);
            ApplicationV3 leadobj=new ApplicationV3();
            leadobj.applicationID=le.applicationID;
            leadobj.strategyId=le.strategyId;
            leadobj.businessName=le.businessName;
             leadobj.State=le.State;
            leadobj.averageMonthlySales=le.averageMonthlySales;
            leadobj.annualRevenue=le.annualRevenue;
             leadobj.loanAmount=le.loanAmount;
            leadobj.timeInBusiness=le.timeInBusiness;
            leadobj.LeadSource=le.LeadSource;
            lstlead.add(leadobj);
            
        
        }
        
        }
        system.debug('+++++'+lstlead);
        }
        }
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