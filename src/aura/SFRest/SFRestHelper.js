({
	makeRequest : function(component, event) {
		 // This is to handle 'call before load' scenario.
        // Most of the times iframe is already loaded for user-click scenarios 
        //and there wont be any wait
        var interval = setInterval(function(){ waitForiFrameAndMakeRequest() }, 10);
        
        function waitForiFrameAndMakeRequest() {
            if(!component.iframeReady) return;
            
            clearInterval(interval);//stop setInterval
            var vfIframe = component.find("vfIframe").getElement().contentWindow;
            vfIframe.postMessage(component.get("v.params"), '*');   
        } 
	}
})