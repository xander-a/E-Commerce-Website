package ph.pup.itech.metrothrift.dao;

import ph.pup.itech.metrothrift.model.RegFormModel;

public class RegFormDao {
    
    public RegFormModel getRegFormDetails(RegFormModel Registration) {
        RegFormModel RegFormDetails;
        String username = Registration.getusername();
        String password = Registration.getPassword();
        String confirmPassword = Registration.getconfirmPassword();
        String firstName = Registration.getfirstName();
        String middleName = Registration.getmiddleName();
        String lastName = Registration.getlastName();
        String address = Registration.getaddress();
        String birthday = Registration.getbirthday();
        String mobile = Registration.getmobile();
        
        RegFormDetails = new RegFormModel(username, password, confirmPassword, firstName, middleName, lastName, address, birthday, mobile);
        System.out.println("RegFormDetails: " + RegFormDetails);
        return RegFormDetails;
    }
}
