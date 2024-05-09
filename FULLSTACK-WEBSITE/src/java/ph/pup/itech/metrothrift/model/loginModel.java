
package ph.pup.itech.metrothrift.model;

public class loginModel {

    public static void add(loginModel login) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    

    private String username;
    private String password;
    
    
    public loginModel () {
        //Set as empty
    }
    
    public loginModel (

            String username, 
            String password) {
        this.username = username;
        this.password = password;
    }
    
    public String getusername() {
        return username;
    }

    public void setusername(String username) {
        this.username = username;
    }
    
    public String getpassword() {
        return password;
    }

    public void setpassword(String password) {
        this.password = password;
    }
}
