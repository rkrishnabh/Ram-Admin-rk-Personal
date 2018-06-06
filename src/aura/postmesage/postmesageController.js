({
    init : function(component, event, helper) {
        alert('------');
        var worker = new Worker("/resource/webworker");
        alert('------'+worker);
        worker.onmessage = function(e) {
            alert('Message received from worker: ' + e.data);
        };

        worker.postMessage([2, 3]);
    }
})