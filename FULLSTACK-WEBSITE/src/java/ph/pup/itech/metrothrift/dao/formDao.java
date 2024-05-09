package ph.pup.itech.metrothrift.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.metrothrift.model.formModel;

public class formDao {
    
public ArrayList<formModel> getProductList() {
            ArrayList<formModel> productList = new ArrayList<>();  
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                formModel product = new formModel();
                product.setproductID(rs.getInt("productID"));
                product.setproductName(rs.getString("productName"));
                product.setproductDescription(rs.getString("productDescription"));
                product.setproductSize(rs.getString("productSize"));
                product.setproductPrice(rs.getDouble("productPrice"));
                product.setproductQuantity(rs.getInt("productQuantity"));
                productList.add(product);
            }

            conn.close();
        } catch (SQLException e) {
            System.out.println("getProductList Error: " + e); 
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
        
        return productList;
    }
   

    public formModel getProductDetails(int productID) {
        formModel productDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select productID, "
                + "productName, "
                + "productDescription, "
                + "productSize, "
                + "productPrice, "
                + "productQuantity "
                + "from product "
                + "where productID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                productID= rs.getInt("productID");
                String productName = rs.getString("productName");
                String productDescription = rs.getString("productDescription");
                String productSize = rs.getString("productSize");
                double productPrice = rs.getDouble("productPrice");
                int productQuantity = rs.getInt("productQuantity");
                productDetails = new formModel(productID, productName, productDescription, productSize, productPrice, productQuantity);
            }
        } catch (SQLException e) {
            System.out.println("getProductDetails Error: " + e); 
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
        return productDetails;
    }
    
    public boolean createProduct (formModel product) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into product ("
                + "productID, "
                + "productName, "
                + "productDescription, "
                + "productSize, "
                + "productPrice, "
                + "productQuantity )"
                + "values (?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
             ps.setInt(1, product.getproductID());
            ps.setString(2, product.getproductName());
            ps.setString(3, product.getproductDescription());
            ps.setString(4, product.getproductSize());
            ps.setDouble(5, product.getproductPrice());
            ps.setInt(6, product.getproductQuantity());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createProduct Error: " + e); 
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
    
    public boolean updateProduct(formModel product) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "update product set "
                + "productName = ? , "
                + "productDescription= ? , "
                + "productSize= ? , "
                + "productPrice = ?, "
                + "productQuantity = ? " 
                + "where productID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(6, product.getproductID());
            ps.setString(1, product.getproductName());
            ps.setString(2, product.getproductDescription());
            ps.setString(3, product.getproductSize());
            ps.setDouble(4, product.getproductPrice());
            ps.setInt(5, product.getproductQuantity());
                        
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateProduct Error: " + e); 
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
    
    public boolean deleteProduct(int productID) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "delete from product "
                + "where productID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productID);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteProduct Error: " + e); 
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