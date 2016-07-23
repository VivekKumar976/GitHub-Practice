public class dependentPicklistController
{
public List<string> str1= new List<string>();
public List<string> str2= new List<string>();
public List<string> str3= new List<string>();
public List<string> str4= new List<string>{'A','B','C'};

public dependentPicklistController()
{
populateLists();
}
    
    public void populateLists()
    {
    
        for(Integer i = 0; i < 10; i++)
        {
            if(i<4)
            {
                str1.add(i.format());
            }
            if(i > 3 && i<7)
            {
                str2.add(i.format());
            }
            if(i > 7 && i<0)
            {
                str3.add(i.format());
            }
        }
    }
    
    
}