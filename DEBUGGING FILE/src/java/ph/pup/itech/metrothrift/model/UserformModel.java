package ph.pup.itech.metrothrift.model;

public class UserformModel {

    private int UserID;
    private String Firstname;
    private String Middlename;
    private String Lastname;
    private String UserRole;

    public UserformModel(
        int UserID, String Firstname, String Middlename, String Lastname, String UserRole) {
        this.UserID = UserID;
        this.Firstname = Firstname;
        this.Middlename = Middlename;
        this.Lastname = Lastname;
        this.UserRole = UserRole;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public String getMiddlename() {
        return Middlename;
    }

    public void setMiddlename(String Middlename) {
        this.Middlename = Middlename;
    }

    public String getLastname() {
        return Lastname;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
    }

    public String getUserRole() {
        return UserRole;
    }

    public void setUserRole(String UserRole) {
        this.UserRole = UserRole;
    }
 

}
