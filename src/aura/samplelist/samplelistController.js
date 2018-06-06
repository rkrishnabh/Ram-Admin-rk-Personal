({
	doInit : function(component, event, helper) {
        alert('------');
        /*var listOfObjects = [];
var a = ["car", "bike", "scooter"];
a.map(function(entry) {
    var singleObj = {}
    singleObj['type'] = 'vehicle';
    singleObj['value'] = entry;
    listOfObjects.push(singleObj);
    
});*/
        var mack = [];
mack.push("Mack");
mack.push("the", "Knife");
alert('00000000'+mack);
       
        
        component.set("v.status", mack);
         
		
	}
})