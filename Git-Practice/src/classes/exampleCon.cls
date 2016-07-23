public class exampleCon {
    String uname;
    public Integer count = 0;
    public Integer secondNumber{get;set;}
    public Integer noOfRows{get;set;}
    public Integer sum{get;set;}
    public String userName{get;set;}
    public String pwd{get;set;}
    public Boolean nameFlag= false; 
    public Boolean pwdFlag = false;
    public String option{get;set;}
    public List<SelectOption> options = new List<SelectOption>();
    public Boolean panelFlag = false;
   // public List<wrapClass> = null;  
   
   public Boolean getPanelFlag(){
   return panelFlag;
   } 
   public class wrapClass{
   public Integer firstNumber{get;set;}
   public Integer secNumber{get;set;}
   public Integer rowSum{get;set;} 
   
   public wrapClass(){
  /* firstNumber = a;
   secNumber = b;
   rowSum = a + b; */
   this.add();
   }
   public void add(){
   this.rowSum = this.firstNumber + this.secNumber;
   //return null;
      }
   }
    public String getUsername() {
        return uname;
    }
            
    public PageReference sayHello() {
        uname = UserInfo.getName();
        return null;
    }
            
    public void setState(String n) {
        state = n;
    }
            
    public String getState() {
        return state;
    }
            
    public PageReference methodOne() {
       // flag = true;
        return null;
    }
            
    private String state = 'no';
    public PageReference incrementCounter() 
{
           
 count++;
            
return null;
    
}

public Boolean getNameFlag(){
return nameflag;
}
public Boolean getPwdFlag(){
return pwdflag;
}

public void doAddition()
{
system.debug('----Inside doAddition----');
//sum = 10 + 10;
panelFlag = true;
//return null;
}

//return picklist values
public List<SelectOption> getPicklistValues()
{
Schema.DescribeFieldResult fieldResult = Account.CustomerPriority__c.getDescribe();
List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
for( Schema.PicklistEntry f : ple)
   {
      options.add(new SelectOption(f.getLabel(), f.getValue()));
   }
   return options; 
}
public void showFields()
{
if(option == 'None'){nameFlag = false; pwdFlag = false;}
if(option == 'High'){nameFlag = true; pwdFlag = true;}
if(option == 'Low'){nameFlag = true; pwdFlag = false;}
if(option == 'Medium'){nameFlag = false; pwdFlag = true;}

}

public List<wrapClass> getprepareData()
{
List<wrapClass> lstWrap = new List<wrapClass>();
for(Integer i = 0; i < noOfRows; i++)
{
   lstWrap.add(new wrapClass()); 
}
return lstWrap;
}
                    
    
public Integer getCount() 
{
        
return count;
    
}


}