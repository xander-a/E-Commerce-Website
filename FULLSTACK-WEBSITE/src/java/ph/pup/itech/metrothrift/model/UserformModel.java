package ph.pup.itech.metrothrift.model;

public class UserformModel {

    private int UserID;
    private String password;
    private String firstName;
    private String middleName;
    private String lastName;
    private String completeAddress;
    private String birthday;
    private String mobileNumber;
    private String accountStatus;
    private String loginStatus;
    private String userRole;
    

    public UserformModel(
            int UserID, String password, String firstName, String middleName, String lastName, String address, String birthday, String mobileNumber, String accountStatus,
            String loginStatus, String userRole) {
        this.UserID = UserID;
        this.password = password;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.completeAddress = address;
        this.birthday = birthday;
        this.mobileNumber = mobileNumber;
        this.accountStatus = accountStatus;
        this.loginStatus = loginStatus;
        this.userRole = userRole;
    }

            public UserformModel () {
        //Set as empty
    }
    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }
    
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getCompleteAddress() {
        return completeAddress;
    }

    public void setCompleteAddress (String completeAddress) {
        this.completeAddress = completeAddress;
    }
    
    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    
    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }
    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
    
    public String getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }
    
    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
    


    
    
}
