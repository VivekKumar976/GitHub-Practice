trigger CaseTrigger on Case (before insert) {

for(Case c : trigger.new)
{
    if(c.Type == 'Mechanical')
    {
    c.addError('Error from Trigger.');
    }
}
}