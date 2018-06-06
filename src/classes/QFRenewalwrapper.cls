public class QFRenewalwrapper{
    
    
    
   
    public decimal AccountLatestOpportunityPipelineStage {get;set;}
    public Date AccountLastPaymentDate {get;set;}
    public Date AccountAppCreateDate {get;set;}
    public Integer AccountLastPaymentDateInMonths {get;set;}
    
    
    
    
    
    
  
    public QFRenewalwrapper(decimal AccountLatestOpportunityPipelineStage,
    Date AccountAppCreateDate,
    Date AccountLastPaymentDate
    
    
    ){
    this.AccountLatestOpportunityPipelineStage=AccountLatestOpportunityPipelineStage;
    this.AccountAppCreateDate=AccountAppCreateDate;
    this.AccountLastPaymentDate=AccountLastPaymentDate;
    this.AccountAppCreateDate=AccountAppCreateDate;
    
    
        
    }   
}