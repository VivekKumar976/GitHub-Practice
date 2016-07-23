public class MyFirstApexClass{

private final Account acct;

public MyFirstApexClass(ApexPages.StandardController controller){
this.acct = (Account)controller.getRecord();
}

public String getSLA(){
return acct.SLA__c;
}
}