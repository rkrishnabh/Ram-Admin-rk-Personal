trigger oppmaptrigger on Opportunity (after insert,after update) {
oppmapTriggerHelperClass.oppfieldupdate(trigger.newmap);
}