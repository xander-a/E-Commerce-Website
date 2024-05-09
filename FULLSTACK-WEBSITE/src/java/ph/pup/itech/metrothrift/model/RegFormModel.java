package ph.pup.itech.metrothrift.model;

public class RegFormModel {

    private String username;
    private String password;
    private String confirmPassword;
    private String firstName;
    private String middleName;
    private String lastName;
    private String address;
    private String birthday;
    private String mobile;

    public RegFormModel(
            String username, String password, String confirmPassword, String firstName, String middleName, String lastName, String address, String birthday, String mobile) {
        this.username = username;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.address = address;
        this.birthday = birthday;
        this.mobile = mobile;
    }

            public RegFormModel () {
        //Set as empty
    }
    public String getusername() {
        return username;
    }

    public void setusername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getconfirmPassword() {
        return confirmPassword;
    }

    public void setconfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getfirstName() {
        return firstName;
    }

    public void setfirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getmiddleName() {
        return middleName;
    }

    public void setmiddleName(String middleName) {
        this.middleName = middleName;
    }
    
    public String getlastName() {
        return lastName;
    }

    public void setlastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getaddress() {
        return address;
    }

    public void setaddress(String address) {
        this.address = address;
    }
    
    public String getbirthday() {
        return birthday;
    }

    public void setbirthday(String birthday) {
        this.birthday = birthday;
    }
    
    public String getmobile() {
        return mobile;
    }

    public void setmobile(String mobile) {
        this.mobile = mobile;
    }
}
