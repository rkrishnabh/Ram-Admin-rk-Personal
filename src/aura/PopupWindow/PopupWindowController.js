({
 
    Sendmessage: function(component,event,helper){
         alert('1111111111');
        var domain = 'https://rk1988-dev-ed--ctrla51.na15.visual.force.com/apex/postmesseag';
         var sender = document.getElementById("test").value;
        alert(sender);
        var iframe = document.getElementById('iframesender').contentWindow;
        alert('......'+iframe);
        
        iframe.postMessage(sender, domain);
        iframe.postMessage(sender, domain);
        console.log('blog.local:  sending message:  ' + sender);
        
        /*setInterval(function(){
             var sender = document.getElementById("test").value;
        alert('sender'+sender);
	//var message = 'Hello!  The time is: ' + (new Date().getTime());
	console.log('blog.local:  sending message:  ' + sender);
	iframe.postMessage(sender,domain); //send the message and target URI
},6000);/*
       
        /*var domain = 'https://rk1988-dev-ed--ctrla51.na15.visual.force.com';
        var myPopup = window.open(domain + '/apex/samplepostmessage','myWindow');
		alert('------'+myPopup);
         var sender = document.getElementById("test").value;
        alert('sender'+sender);
          myPopup.postMessage(message,domain);
        //periodical message sender
      //setInterval(function(){
	      var message = 'Hello!  The time is: ' + (new Date().getTime());
	    console.log('blog.local:  sending message:  ' + message);
	    myPopup.postMessage(message,domain); //send the message and target URI
        },6000);*/
          
       
         window.onload = function() {
             alert('00000');
                                var receiver = document.getElementById('receiver').contentWindow;
                                // Prevent any default browser behaviour.
                                //event.preventDefault();// Send a message with the text 'Hello Treehouse!' to the receiver window.
                                receiver.postMessage('Hello Treehouse!', 'https://disneycluster1--clust1dev--c.cs59.visual.force.com/apex/LtngToVF');
                alert('camehere');
    }
   
    }
    /*Sendingmessage : function(component, event,helper) {
       var name=component.find("test").get("v.value");
        alert("Name value+++++"+name);
       //var window = document.getElementsByTagName('iframe')[0];
                   name.postMessage(name,'https://disneycluster1--clust1dev--c.cs59.visual.force.com/apex/LtngToVF');   
                 
  // document.forms.form.Popupwindow = function() {
  //  win.postMessage(this.elements.Name.value,"https://disneycluster1--clust1dev--c.cs59.visual.force.com/apex/LtngToVF" )
    //return false
   }*/
})