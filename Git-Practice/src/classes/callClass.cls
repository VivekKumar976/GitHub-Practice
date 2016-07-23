public class callClass
{
public void callClassMethod(){
soapSforceComSchemasClassAccountpla outerClass = new soapSforceComSchemasClassAccountpla(); 
soapSforceComSchemasClassAccountpla.Plan vPlan = new soapSforceComSchemasClassAccountpla.Plan(); 
vPlan.Name = 'TestName';
vPlan.planNumber = 2;
soapSforceComSchemasClassAccountpla.AccountPlan pN = new soapSforceComSchemasClassAccountpla.AccountPlan();
soapSforceComSchemasClassAccountpla.Plan response = pN.createAccountPlan(vPlan);
soapSforceComSchemasClassAccountpla.SessionHeader_element sessHead = new soapSforceComSchemasClassAccountpla.SessionHeader_element();
sessHead.sessionId = '00D90000000agaN!AQkAQHPXuk9Vb_sABkfoyL5.o9k4e3ym.yaTe_kxnitcWRfCQoXbk6y.XpRejbiO7T5mbsxW3WPrWFj6xwl2Ko3rIs8xWzHs';
system.debug('----' + response.name + '----');
}
}