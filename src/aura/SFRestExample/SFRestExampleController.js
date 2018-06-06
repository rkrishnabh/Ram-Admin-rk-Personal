({
	doInit : function(component, event, helper) {
		component.set("v.reqParams", {
            type:'request', //this is for iframe to know we are asking for a request
                xhrConfig: { //this is actual http obj
                    method: 'GET',
                    url: '/services/data/v33.0/query?q=SELECT+Name+FROM+Account+LIMIT+10'
                }
    	});
	},
    handleResponse: function(component, event, helper) {
        var data = event.getParam("data");
        component.set("v.accounts", data.body.records);
    }
})