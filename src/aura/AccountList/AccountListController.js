({
    doInit : function(component, event) {
        var action = component.get("c.findAll");
         //console.log("----"+a.contacts;
        action.setCallback(this, function(a) {
            
            component.set("v.accounts", a.getReturnValue());
            //for(i in a){
            console.log("----"+a.getReturnValue());
            console.log(JSON.stringify(a.getReturnValue()));
            //}
            
            
        } 
                          );
        $A.enqueueAction(action);
        
    },
    searchKeyChange: function(component, event) {
    var searchKey = event.getParam("searchKey");
    var action = component.get("c.findByName");
    action.setParams({
      "searchKey": searchKey
    });
    action.setCallback(this, function(a) {
        component.set("v.accounts", a.getReturnValue());
        console.log("----"+a.getReturnValue());
        console.log(JSON.stringify(a.getReturnValue()));
    });
    $A.enqueueAction(action);
}
})