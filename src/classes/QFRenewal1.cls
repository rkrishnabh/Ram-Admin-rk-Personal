public class QFRenewal1 {

   
    
    
    
    public void a(){
    
           datediff();
           datediff1();
           system.debug('====='+datediff());
           system.debug('====='+datediff1());

           // Integer AccountLastPaymentDateInMonthsValue = objQFRenewalwrap.AccountAppCreateDate.monthsBetween(objQFRenewalwrap.AccountLastPaymentDate);
           // system.debug('AccountLastPaymentDateInMonthsValue'+AccountLastPaymentDateInMonthsValue);
            
             
           
} 
public decimal datediff(){

 date appcdate=date.ValueOf('2016-10-1');
            date latpaydate=date.ValueOf('2017-1-1');
            
            //system.debug('======');
            QFRenewalwrapper objQFRenewalwrap=new QFRenewalwrapper(3456,appcdate,latpaydate);
             //system.debug('+++'+objQFRenewalwrap.AccountLatestOpportunityPipelineStage);
             decimal AccountLatestOpportunityPipelineStageValue;
            string AccountLatestOpportunityPipelineStageTemp=string.valueof(objQFRenewalwrap.AccountLatestOpportunityPipelineStage).left(1);
            
            if(!(AccountLatestOpportunityPipelineStageTemp == '3' || AccountLatestOpportunityPipelineStageTemp =='4' || AccountLatestOpportunityPipelineStageTemp =='5' || AccountLatestOpportunityPipelineStageTemp =='6' || AccountLatestOpportunityPipelineStageTemp =='7'))
            {
                if(!(AccountLatestOpportunityPipelineStageTemp ==null)){
                //AccountLatestOpportunityPipelineStageValue=decimal.valueOf(AccountLatestOpportunityPipelineStageTemp);
                AccountLatestOpportunityPipelineStageValue=objQFRenewalwrap.AccountLatestOpportunityPipelineStage;
                system.debug('AccountLatestOpportunityPipelineStageValue'+AccountLatestOpportunityPipelineStageValue);
                }
                
            }
            else{
            system.debug('---else-----');}
            return AccountLatestOpportunityPipelineStageValue;

}  
public integer datediff1(){

 date appcdate=date.ValueOf('2016-10-1');
            date latpaydate=date.ValueOf('2017-1-1');
            
            //system.debug('======');
            QFRenewalwrapper objQFRenewalwrap=new QFRenewalwrapper(2,appcdate,latpaydate);
             //system.debug('+++'+objQFRenewalwrap.AccountLatestOpportunityPipelineStage);
             
               Integer AccountLastPaymentDateInMonthsValue = objQFRenewalwrap.AccountAppCreateDate.monthsBetween(objQFRenewalwrap.AccountLastPaymentDate);
           // system.debug('AccountLastPaymentDateInMonthsValue'+AccountLastPaymentDateInMonthsValue);
            
            return AccountLastPaymentDateInMonthsValue;

}  

}