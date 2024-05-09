package ph.pup.itech.metrothrift.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.metrothrift.model.RegFormModel;

public class RegFormDao {
    
public ArrayList<RegFormModel> getRegformList() {
            ArrayList<RegFormModel> regformList = new ArrayList<>();  
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from regform";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                RegFormModel regform = new RegFormModel();
                regform.setusername(rs.getString("username"));
                regform.setPassword(rs.getString("password"));
                regform.setconfirmPassword(rs.getString("confirmPassword")); 
                regform.setfirstName(rs.getString("firstName")); 
                regform.setmiddleName(rs.getString("middleName")); 
                regform.setlastName(rs.getString("lastName")); 
                regform.setaddress(rs.getString("address")); 
                regform.setbirthday(rs.getString("birthday")); 
                regform.setmobile(rs.getString("mobile")); 
                regformList.add(regform);
            }

            conn.close();
        } catch (SQLException e) {
            System.out.println("getRegformList Error: " + e); 
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
        
        return regformList;
    }
   
    public RegFormModel getRegformDetails(String username) {
        RegFormModel regformDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select username, "
                + "password, "
                + "confirmPassword, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "address, "                
                + "birthday, "
                + "mobile "
                + "from regform "
                + "where username = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
                ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                username= rs.getString("username");
                String password= rs.getString("password");
                String confirmPassword = rs.getString("confirmPassword");
                String firstName = rs.getString("firstName");
                String middleName = rs.getString("middleName");
                String lastName = rs.getString("lastName");
                String address = rs.getString("address");
                String birthday= rs.getString("birthday");
                String mobile= rs.getString("mobile");                
                regformDetails = new RegFormModel(username, password, confirmPassword, firstName, middleName, lastName, address, birthday, mobile);
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
        return regformDetails;
    }
    
    public boolean createRegform (RegFormModel regform) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into regform ("
                + "username, "
                + "password, "
                + "confirmPassword, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "address, "                
                + "birthday, "
                + "mobile )"
                + "values (?,?,?,?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
             ps.setString(1, regform.getusername());
             ps.setString(2, regform.getPassword());
             ps.setString(3, regform.getconfirmPassword());
            ps.setString(4, regform.getfirstName());
            ps.setString(5, regform.getmiddleName());
            ps.setString(6, regform.getlastName());
            ps.setString(7, regform.getaddress());
            ps.setString(8, regform.getbirthday());
            ps.setString(9, regform.getmobile());

            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createRegform Error: " + e); 
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
    
    public boolean updateRegform(RegFormModel regform) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "update regform set "
                +"password = ?,"
                + "confirmPassword = ?, "
                + "firstName = ?, "
                + "middleName = ?, "
                + "lastName = ?, "
                + "address = ?, "
                + "birthday = ?, "
                + "mobile = ? "
                + "where username = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(9, regform.getusername());
        ps.setString(1, regform.getPassword());
        ps.setString(2, regform.getconfirmPassword());
        ps.setString(3, regform.getfirstName());
        ps.setString(4, regform.getmiddleName());
        ps.setString(5, regform.getlastName());
        ps.setString(6, regform.getaddress());
        ps.setString(7, regform.getbirthday());
        ps.setString(8, regform.getmobile());

            
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateRegformError: " + e); 
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
    
    public boolean deleteRegform(String username) {
        boolean success = false;    
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "delete from regform "
                + "where username = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteRegform Error: " + e); 
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