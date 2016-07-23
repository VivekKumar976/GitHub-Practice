public class classWithQueue2 implements Queueable, Database.AllowsCallOuts
{
Account a;

public void execute(QueueableContext q)
{
system.debug('I was called ----- classWithQueue2');

}
}