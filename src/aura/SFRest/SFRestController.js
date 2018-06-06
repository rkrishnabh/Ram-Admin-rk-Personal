({
    doInit: function(component, event, helper) {
        //listen to iframe's message
        addEventListener("message", 
          function(event) {
          	if(event.data.type === 'ready' && component.find("vfIframe")) {//iframe loaded
            	component.iframeReady = true;      
            } else if(event.data.type === 'response') {//send response
               	var cmpEvt = component.getEvent("response");
 				cmpEvt.setParams({ "data" : event.data.response});
        		cmpEvt.fire();
        	}
    	  }, 
        false);
    },
	makeRequest : function(component, event, helper) {
       helper.makeRequest(component, event); 
	}
})