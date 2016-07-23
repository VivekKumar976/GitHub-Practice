trigger BeforeUpdateonTestObject on test_object__c (before update) {

system.debug('I ran!');
}