trigger BeforeInsertonMeeting on Meeting__c (before insert) {

    for(Meeting__c m : trigger.new){
        m.Test_Field_03__c = m.Test_Field__c.substring(0,3);
    }

}