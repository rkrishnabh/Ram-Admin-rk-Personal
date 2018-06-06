({
    locationChange : function(component, event, helper) {
        alert('@@@');
        var token = event.getParam("token");
        if (token.indexOf('account/') === 0) {
            var accountId = token.substr(token.indexOf('/') + 1);
            var action = component.get("c.findById");
            action.setParams({
              "accountId": accountId
            });
            action.setCallback(this, function(a) {
                component.set("v.contact", a.getReturnValue());
            });
            $A.enqueueAction(action);
        }
    }
})