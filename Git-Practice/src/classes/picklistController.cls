public class picklistController {

  String[] ps= new String[]{};

  public String[] getProfiles() {
    return ps;
  }

  public void setProfiles(String[] ps) {
    this.ps = ps;
  }

  public List<SelectOption> getItems() {
    List<SelectOption> op = new List<SelectOption>();
    for(Profile p : [SELECT Id, Name FROM Profile]) op.add(new SelectOption(p.Id, p.Name));
    return op;
  }
  }