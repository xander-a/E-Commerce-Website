package ph.pup.itech.metrothrift.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.metrothrift.model.loginModel;

public class loginDao {
    
    
 public ArrayList<loginModel> getLoginList() {
            ArrayList<loginModel> loginList = new ArrayList<>();  
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from login";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                loginModel login = new loginModel();
                
                login.setusername(rs.getString("username("));
                login.setpassword(rs.getString("password"));
                loginList.add(login);
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
        
        return loginList;
    }
   

    public loginModel getLoginDetails(String username) {
        loginModel loginDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select username, "
                + "password "
                + "from login "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
                 ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                String password = rs.getString("password");
                
                loginDetails = new loginModel(username, password);
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
        return loginDetails;
    }
    
    public boolean createLogin (loginModel login) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into login ("
               
                + "username, "
                + "password )"
                + "values (?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
             
            ps.setString(1, login.getusername());
            ps.setString(2, login.getpassword());
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
    
    public boolean updateLogin(loginModel login) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "update login set "
                + "username = ?, "
                + "password = ? "
                + "where username = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
           
            ps.setString(1, login.getusername());
            ps.setString(2, login.getpassword());
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
}