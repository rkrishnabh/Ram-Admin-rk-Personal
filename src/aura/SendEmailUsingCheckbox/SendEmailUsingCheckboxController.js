({  SendEmailUsingCheckbox : function(component,event,helper) {
    helper.sendingemail(component,event);
   
       /*  var name = component.find("Open").get("v.value");
        if(name == true){
            
            var name1=component.find("Open").get("v.text");
             var email = component.find("email").get("v.value"); 
            
             {
         var action = component.get("c.SendingEmail");
                 action.setParams({ str: name1, email: email });
                 
           action.setCallback(this, function(response){
        if(response.getState() === "SUCCESS"){
           alert("From server: " + response.getReturnValue());
            
        }
    });

    $A.enqueueAction(action);
}
     }*/ 
   
  /*var checkbox = event.getSource("v.text");
    var name=checkbox.get("v.text")
    var email=component.find("email").get("v.value");
    alert('-----name ----'+name+'------email'+email);
    
this.sendmail(name);*/
  
 
    } ,
  SendEmail1:function(compnent,event,helper){
      alert('kkkkkkk');
      helper.SendEmail11(compnent,event);
      
      
  }
  
  
})