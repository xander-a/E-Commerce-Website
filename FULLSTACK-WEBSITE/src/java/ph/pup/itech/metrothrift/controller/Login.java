package ph.pup.itech.metrothrift.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.metrothrift.model.loginModel;
import ph.pup.itech.metrothrift.dao.loginDao;


public class Login extends HttpServlet {
    
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();
        switch(action){
            case "/login/create/form":
                showLoginCreateForm(request, response);
                break;
            case "/login/create":
                createLogin(request, response);
                break;
            case "/login/update/form":
                showUserUpdateForm(request, response);
                break;
            case "/login/update":
                updateLogin(request, response);
                break;
            default:
                viewLogin(request, response);
                break;
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    } 
    
        private void viewLogin(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    loginDao login = new loginDao();
    ArrayList<loginModel> loginList = login.getLoginList();
    request.setAttribute("loginList", loginList);
    
    RequestDispatcher rd = getServletContext().getRequestDispatcher("/log-in-page.jsp");
    rd.forward(request, response);
}
        
    
  private void showLoginCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/ChangePassword.jsp");
        rd.forward(request, response);
    }
  
private void createLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        
        loginDao login = new loginDao();
        loginModel createLogin = new loginModel(
                username, password);
        login.createLogin(createLogin);       

     response.sendRedirect(request.getContextPath() + "/Home");  
        

    }


 private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        loginDao login = new loginDao();
        loginModel loginDetails = login.getLoginDetails(username);
        request.setAttribute("loginDetails", loginDetails);
        

    
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/loginUpdate.jsp");
        rd.forward(request, response);

    }
 
 private void updateLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        loginDao login = new loginDao();
        loginModel updateLogin = new loginModel(
              username, password);
        login.updateLogin(updateLogin);
        
        response.sendRedirect(request.getContextPath() + "/login");
    }
 
 

}

