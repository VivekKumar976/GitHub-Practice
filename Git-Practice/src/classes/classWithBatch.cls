public class classWithBatch implements Database.Batchable<sObject>
{
    public Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id,Name,Phone FROM Account ';
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext BC, List<Account> scope)
    {
    List<Account> lstAcc = new List<Account>();
        for (Account a : scope)
        {
           a.Phone='123';
           lstAcc.add(a);
        }
        update lstAcc;
    }  
    public void finish(Database.BatchableContext BC)
    {
    
    }
}