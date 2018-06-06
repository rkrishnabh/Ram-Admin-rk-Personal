trigger oppTrigger on Opportunity (after insert,after update) {


{
oppTriggerHelperClass.applyDiscount(trigger.new);
}

}