trigger AccTrg on Account (before insert,before update) {
    
    
    for(Account acc : trigger.new){
        if(acc.Phone == null)
        acc.Fax.addError('Please eneter phone value...');
        
        
        if(acc.Type != null && acc.Industry == null)
        acc.addError('If type specified, industry is mandatory.');
        
        if(acc.Rating == null)
        acc.Rating='Very Hot';
        
        if(acc.fax == null && acc.Phone != null){
            acc.fax = acc.phone;
        }
    }
}