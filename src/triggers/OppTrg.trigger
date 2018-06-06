trigger OppTrg on Opportunity (before insert, before update, after insert) {
    
    if(trigger.isInsert){
        if(trigger.isBefore){
            System.debug('>>>>>>trigger fired insert before>>>>>>>>>>');
            System.debug('>>>>>>Before>>>>>>>>>'+trigger.new[0]);
        }
        if(trigger.isAfter){
            System.debug('>>>>>>trigger fired insert after>>>>>>>>>>');
            System.debug('>>>>>>>After>>>>>>>>'+trigger.new[0]);
        }
        
    }
    
    if(trigger.isUpdate){
        System.debug('>>>>>>trigger fired update>>>>>>>>>>');
    }
    
    
}