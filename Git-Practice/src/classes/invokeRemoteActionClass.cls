public class invokeRemoteActionClass{
    
    @RemoteAction
    public static String invokeRemoteActionMethod()
    {
    system.debug('---- success ----');
        return 'Successful from Remote Action';
    }
    
    public String invokeActionFunctionMethod()
    {
        system.debug('---- success ----');
        return 'Successful from Action Function';
    }
}