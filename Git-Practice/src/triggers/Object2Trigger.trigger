trigger Object2Trigger on Object2__c (after insert, after update, after delete) {
List<Object1__c> intList = new List<Object1__c>();
List<Object1__c> intList1 = new List<Object1__c>();
Set<Id> parentIdSet = new Set<Id>();
if(trigger.isInsert || trigger.isUpdate){
    for(Object2__c o : trigger.new){
        parentIdSet.add(o.Object1__c);
    }
    }else{
    if(trigger.isDelete)
    {
    for(Object2__c o : trigger.old){
        parentIdSet.add(o.Object1__c);
    }
    }
    }
    intList = [Select Id, (Select Id from Objects2__r where Role__c = 'Employee') from Object1__c where Id IN : parentIdSet];
    
    for(Object1__c ob : intList)
    {
        ob.No_of_Employees__c = ob.Objects2__r.size();
        intList1.add(ob);
    }
    update intList1;
}