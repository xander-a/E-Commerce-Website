package ph.pup.itech.metrothrift.controller;

 

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.metrothrift.model.formModel;
import ph.pup.itech.metrothrift.dao.formDao;

 

public class Product extends HttpServlet {

 

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();
        switch(action){
            case "/product/create/form":
                showProductCreateForm(request, response);
                break;
            case "/product/create":
                createProduct(request, response);
                break;
            case "/product/update/form":
                showProductUpdateForm(request, response);
                break;
            case "/product/update":
                updateProduct(request, response);
                break;
            case "/product/delete":
                deleteProduct(request, response);
                break;
            default:
                viewProduct(request, response);
                break;
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    } 
    
        private void viewProduct(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    formDao product = new formDao();
    ArrayList<formModel> productList = product.getProductList();
    request.setAttribute("productList", productList);
    
    RequestDispatcher rd = getServletContext().getRequestDispatcher("/products.jsp");
    rd.forward(request, response);
}
        
    
  private void showProductCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product-form.jsp");
        rd.forward(request, response);
    }
  
private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String productSize = request.getParameter("productSize");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        
        
        formDao product = new formDao();
        formModel createProduct = new formModel(
                productID, productName, productDescription, productSize, productPrice, productQuantity);
        product.createProduct(createProduct);       
        
        
    request.setAttribute("productID", productID);
    String message = "Product " + productID + " has been added.";
    request.setAttribute("message", message);
         

     RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product");
        rd.forward(request, response);  
        

    }


 private void showProductUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        formDao product = new formDao();
        formModel productDetails = product.getProductDetails(productID);
        request.setAttribute("productDetails", productDetails);
        

    
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/ProductFormUpdate.jsp");
        rd.forward(request, response);
        
        
    }
 
 private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String productSize = request.getParameter("productSize");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        formDao product = new formDao();
        formModel updateProduct = new formModel(
                productID, productName, productDescription, productSize, productPrice, productQuantity);
        product.updateProduct(updateProduct);
        
        request.setAttribute("productID", productID);
    String message = "Product " + productID + " has been updated.";
    request.setAttribute("message", message);
         

     RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product");
        rd.forward(request, response); 
    }
 
 private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        formDao product = new formDao();
        product.deleteProduct(productID);
        
        request.setAttribute("productID", productID);
    String message = "Product " + productID + " has been deleted.";
    request.setAttribute("message", message);
         

     RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product");
        rd.forward(request, response); 
    }
 

}
