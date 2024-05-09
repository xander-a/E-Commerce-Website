package ph.pup.itech.metrothrift.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.metrothrift.model.UserformModel;

public class UserformDao {

    
 public ArrayList<UserformModel> getUserList() {
            ArrayList<UserformModel> userList = new ArrayList<>();  
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from user";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                UserformModel user = new UserformModel();
                user.setUserID(rs.getInt("UserID"));
                user.setPassword(rs.getString("password"));
                user.setFirstName(rs.getString("firstName")); 
                user.setMiddleName(rs.getString("middleName")); 
                user.setLastName(rs.getString("lastName")); 
                user.setCompleteAddress(rs.getString("completeAddress")); 
                user.setBirthday(rs.getString("birthday")); 
                user.setMobileNumber(rs.getString("mobileNumber")); 
                user.setAccountStatus(rs.getString("accountStatus"));
                user.setLoginStatus(rs.getString("loginStatus"));
                user.setLoginStatus(rs.getString("loginStatus"));
                user.setUserRole(rs.getString("userRole"));
                userList.add(user);
            }

            conn.close();
        } catch (SQLException e) {
            System.out.println("getUserList Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        
        return userList;
    }
   

    public UserformModel getUserDetails(int UserID) {
        UserformModel userDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select UserID, "
                + "password, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "completeAddress, "                
                + "birthday, "
                + "mobileNumber, "
                + "accountStatus, "
                + "loginStatus, "
                + "userRole "
                + "from user "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, UserID);
            rs = ps.executeQuery();
            if (rs.next()) {
                UserID = rs.getInt("UserID");
                String password= rs.getString("password");
                String firstName = rs.getString("firstName");
                String middleName = rs.getString("middleName");
                String lastName = rs.getString("lastName");
                String completeAddress = rs.getString("completeAddress");
                String birthday= rs.getString("birthday");
                String mobileNumber= rs.getString("mobileNumber");
                String accountStatus= rs.getString("accountStatus");    
                String loginStatus= rs.getString("loginStatus");    
                String userRole= rs.getString("userRole");    
                userDetails = new UserformModel(UserID, password, firstName, middleName, lastName ,completeAddress, birthday, mobileNumber, accountStatus, loginStatus, userRole);
            }
        } catch (SQLException e) {
            System.out.println("getUserDetails Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return userDetails;
    }
    
    public boolean createUser (UserformModel user) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into user ("
                + "UserID, "
                + "password, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "completeAddress, "                
                + "birthday, "
                + "mobileNumber, "
                + "accountStatus, "
                + "loginStatus, "
                + "userRole )"
                + "values (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
             ps.setInt(1, user.getUserID());
             ps.setString(2, user.getPassword());
            ps.setString(3, user.getFirstName());
            ps.setString(4, user.getMiddleName());
            ps.setString(5, user.getLastName());
            ps.setString(6, user.getCompleteAddress());
            ps.setString(7, user.getBirthday());
            ps.setString(8, user.getMobileNumber());
            ps.setString(9, user.getAccountStatus());
            ps.setString(10, user.getLoginStatus());
            ps.setString(11, user.getUserRole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
    
    public boolean updateUser(UserformModel user) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "update user set "
                + "password = ?, "
                + "firstName= ?, "
                + "middleName = ?, "
                + "lastName = ?, "
                + "completeAddress = ?, "                
                + "birthday = ?, "
                + "mobileNumber = ?, "
                + "accountStatus = ?, "
                + "loginStatus = ?, "
                + "userRole = ? "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(11, user.getUserID());
             ps.setString(1, user.getPassword());
        ps.setString(2, user.getFirstName());
        ps.setString(3, user.getMiddleName());
        ps.setString(4, user.getLastName());
        ps.setString(5, user.getCompleteAddress());
        ps.setString(6, user.getBirthday());
        ps.setString(7, user.getMobileNumber());
        ps.setString(8, user.getAccountStatus());
        ps.setString(9, user.getLoginStatus());
        ps.setString(10, user.getUserRole());

            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
    
    public boolean deleteUser(int UserID) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "delete from user "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, UserID);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
}