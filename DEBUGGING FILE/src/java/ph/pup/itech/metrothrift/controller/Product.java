package ph.pup.itech.metrothrift.controller;

 

import java.io.IOException;
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
        try {
            getForm(request, response);
        } finally {
            showForm(request, response);
        }
    }

 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

 

    private void getForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String productSize = request.getParameter("productSize");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        
        formModel form = new formModel(
                productID, productName, productDescription, productSize, productPrice, productQuantity);
        formDao FormDao = new formDao();
        formModel getForm = FormDao.getformDetails(form);


        request.setAttribute("form", getForm);

        String message = getForm.getproductName() + " with " + getForm.getproductID() + " has been added to the inventory.";
        request.setAttribute("message", message);

        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/products.jsp");
        rd.forward(request, response);
    }

 

    private void showForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/products.jsp");
        rd.forward(request, response);
    }
}