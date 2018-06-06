({
    getTasks : function(component) {
        //var action = component.get("c.getTasks");
        var action = component.get("c.getAccountlist");
        action.setCallback(this, function(data) {
            component.set("v.tasks", data.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    selectDateSort : function(component) {
        alert('======');
        var dateSort = component.find('dateSort');
        $A.util.addClass(dateSort.getElement(), 'selected');
        var titleSort = component.find('titleSort');
        $A.util.removeClass(titleSort.getElement(), 'selected');
    },
    doSortByDate : function(component) {
        var taskList = component.get("v.tasks");
         //alert('LLLLLLLLLLLL');
        taskList.sort(function (a, b) {
            var aData = a.ActivityDate;
            var bData = b.ActivityDate;
            alert('------'+aData+'-------'+bData);
            if (aData < bData) return -1;
            if (aData > bData) return 1;
            return 0;
        });
        component.set("v.tasks", taskList);
       // alert('*************'+JSON.stringify(taskList));
        
    },
    selectTitleSort : function(component) {
       // alert('LLLLLLLLLLLL');
        var dateSort = component.find('dateSort');
        $A.util.removeClass(dateSort.getElement(), 'selected');
        var titleSort = component.find('titleSort');
        $A.util.addClass(titleSort.getElement(), 'selected');
    },
    doSortByTitle : function(component) {
        var taskList = component.get("v.tasks");
       
        // alert('LLLLLLLLLLLL');
        taskList.sort(function (a, b) {
            //var aData = a.Subject;
           //var bData = b.Subject;
             var aData = a.Name;
            var bData = b.Name;
            alert('------'+aData+'-------'+bData);
            if (aData < bData) return -1;
            if (aData > bData) return 1;
            return 0;
            /* var x = aData.toLowerCase(), y = aData.toUpperCase();
    			alert('&&&&&&&&&&&&'+x+'&&&&&&'+y);
    return x < y ? -1 : x > y ? 1 : 0;*/
            
        });
        component.set("v.tasks", taskList);
        alert('*************'+JSON.stringify(taskList));
    },
})