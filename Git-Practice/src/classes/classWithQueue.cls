public class classWithQueue implements Queueable, Database.AllowsCallOuts
{
Account a;
public classWithQueue(sObject o)
{
a = (Account) o;
}
public void execute(QueueableContext q)
{
system.debug(a.Id);
/*Id i = System.enqueueJob(new classWithQueue2());
system.debug(i);
*/
classWithFutureMethod.callFutureMethod('s');
}
}