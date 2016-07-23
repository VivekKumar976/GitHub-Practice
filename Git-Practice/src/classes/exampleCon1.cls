public class exampleCon1 {

    public exampleCon1(ApexPages.StandardController controller) {

    }

    Integer count = 0;
                        
    public PageReference incrementCounter() {
            count++;
            return null;
    }
                        
    public Integer getCount() {
        return count;
    }
}