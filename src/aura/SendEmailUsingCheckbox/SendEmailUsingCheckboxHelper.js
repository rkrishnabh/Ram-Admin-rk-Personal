({
    sendingemail:function(component,event){
          var checkbox = event.getSource("v.text");
   var name=checkbox.get("v.text")
    
    var email=component.find("email").get("v.value");
    alert('=======name===='+name+'------email'+email);
        //this.SendEmail11(component,name,email);
        //component.set("v.Email",email);
        //var resultCmp = component.find("oEmail");

         //resultCmp.set("v.value", email);

        return;
    },
    SendEmail11:function(component,event){
        var rr=sendingemail();
        alert('joyyyyyyyyyy');
    }
    
    /*SendEmail11:function(name,email){
        
       console.log(name);
        console.log(email);
        alert('********'+name);
        
        alert('********'+email);
        //this.sendingemail(component,event,kk,email);
        
        //component.set("v.Email",email);
       // var resultCmp = component.find("oEmail");
		//var resultCmp1 = component.find("oName");
        // resultCmp.set("v.value", email);
        //resultCmp1.set("v.value", name);
       
       
    }*/
    
    
})