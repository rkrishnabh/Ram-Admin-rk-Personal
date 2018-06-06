public class Detali_page_submit_Button {
                @AuraEnabled
                public Static void Detali_submit_Button(ID recID ) {
                        system.debug('--------->'+recID );
                                account acc= [Select Id , name,Industry FROM Account WHERE ID =: ID.Valueof(recID)];
                               
                                if(acc.Industry == 'Agriculture'){
                                                acc.Industry = 'Finance';
                                }
        
                                Update acc;
                }
}