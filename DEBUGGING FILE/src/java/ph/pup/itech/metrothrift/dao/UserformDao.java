package ph.pup.itech.metrothrift.dao;

import ph.pup.itech.metrothrift.model.UserformModel;

public class UserformDao {
    
    public UserformModel getuserDetails(UserformModel user) {
        UserformModel userDetails;
        int UserID = user.getUserID();
        String Firstname = user.getFirstname();
        String Middlename = user.getMiddlename();
        String Lastname = user.getLastname();
        String UserRole = user.getUserRole();
        
        userDetails = new UserformModel(UserID, Firstname, Middlename, Lastname, UserRole);
        System.out.println("userDetails: " + userDetails);
        return userDetails;
    }
         public String getproductID(){
        return null;
    }
}