({            
    doInit : function(component, event, helper) {
        
        var retVal = confirm("You are submitting Opportunity");
        if( retVal == true ){
            var action = component.get("c.Detali_submit_Button");     
            var recId = component.get("v.recordId");
          
            action.setParams({
                "recID": recId
            });
            //Setting the Callback
            action.setCallback(this,function(a){                                                                        
                //get the response state
                var state = a.getState();                                                                           
                //check if result is successfull
                
                if(state == "SUCCESS"){
                    var result = a.getReturnValue();
                    if(state == "SUCCESS")                       
                        alert('Submitted opportunity');
                    
                    setTimeout(function(){
                        window.location.reload();
                    });                           
                    
                    
                } else if(state == "ERROR"){
                    alert('Error in Submitting');
                }                  
            });
            $A.enqueueAction(action);        
        }
        else{
            return false;
        }
        
        
        //adds the server-side action to the queue       
        
    }
    
    
})