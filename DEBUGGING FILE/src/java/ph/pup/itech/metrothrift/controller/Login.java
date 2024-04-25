package ph.pup.itech.metrothrift.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("userName");
        String password = request.getParameter("password");

        request.setAttribute("userName", firstName);
        request.setAttribute("password", password);

        System.out.println("First name: " + firstName);
        System.out.println("Password: " + password);
        
        RequestDispatcher customerName = getServletContext().getRequestDispatcher("/log-in-page.jsp");
        customerName.forward(request,response);
            
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
