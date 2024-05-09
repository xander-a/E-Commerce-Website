package ph.pup.itech.metrothrift.controller;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.metrothrift.model.UserformModel;
import ph.pup.itech.metrothrift.dao.UserformDao;

public class User extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();
        switch(action){
            case "/user/create/form":
                showUserCreateForm(request, response);
                break;
            case "/user/create":
                createUser(request, response);
                break;
            case "/user/update/form":
                showUserUpdateForm(request, response);
                break;
            case "/user/update":
                updateUser(request, response);
                break;
            case "/user/delete":
                deleteUser(request, response);
                break;
            default:
                viewUser(request, response);
                break;
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    } 
    
        private void viewUser(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    UserformDao user = new UserformDao();
    ArrayList<UserformModel> userList = user.getUserList();
    request.setAttribute("userList", userList);
    
    RequestDispatcher rd = getServletContext().getRequestDispatcher("/User.jsp");
    rd.forward(request, response);
}
        
    
  private void showUserCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/UserForm.jsp");
        rd.forward(request, response);
    }
  
private void createUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String completeAddress = request.getParameter("completeAddress");
        String birthday = request.getParameter("birthday");
        String mobileNumber = request.getParameter("mobileNumber");
        String accountStatus = request.getParameter("accountStatus");
        String loginStatus = request.getParameter("loginStatus");
        String userRole = request.getParameter("userRole");
        
        
        UserformDao user = new UserformDao();
        UserformModel createUser = new UserformModel(
                UserID, password, firstName, middleName, lastName, completeAddress, birthday, mobileNumber, accountStatus, loginStatus, userRole);
        user.createUser(createUser);       
        

    request.setAttribute("UserID", UserID);
    String message = "User " + UserID + " has been added.";
    request.setAttribute("message", message);
    
            RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/user");
        rd.forward(request, response);
//     response.sendRedirect(request.getContextPath() + "/user");  
        

    }


 private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int UserID = Integer.parseInt(request.getParameter("UserID"));
        UserformDao user = new UserformDao();
        UserformModel userDetails = user.getUserDetails(UserID);
        request.setAttribute("userDetails", userDetails);
        

    
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/UserFormUpdate.jsp");
        rd.forward(request, response);
        
        
    }
 
    private void updateUser(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
           int UserID = Integer.parseInt(request.getParameter("UserID"));
           String password = request.getParameter("password");
           String firstName = request.getParameter("firstName");
           String middleName = request.getParameter("middleName");
           String lastName = request.getParameter("lastName");
           String completeAddress = request.getParameter("completeAddress");
           String birthday = request.getParameter("birthday");
           String mobileNumber = request.getParameter("mobileNumber");
           String accountStatus = request.getParameter("accountStatus");
           String loginStatus = request.getParameter("loginStatus");
           String userRole = request.getParameter("userRole");


           UserformDao user = new UserformDao();
           UserformModel updateUser = new UserformModel(
                   UserID, password, firstName, middleName, lastName, completeAddress, birthday, mobileNumber, accountStatus, loginStatus, userRole);
           user.updateUser(updateUser); 

       request.setAttribute("UserID", UserID);
       String message = "User " + UserID + " has been updated.";
       request.setAttribute("message", message);

               RequestDispatcher rd = getServletContext().getRequestDispatcher(
                   "/user");
           rd.forward(request, response);


   //        response.sendRedirect(request.getContextPath() + "/user");
       }
 
 private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int UserID= Integer.parseInt(request.getParameter("UserID"));
        UserformDao user = new UserformDao();
        user.deleteUser(UserID);
//        response.sendRedirect(request.getContextPath() + "/user");
        
                      request.setAttribute("UserID", UserID);
    String message = "User " + UserID + " has been deleted.";
    request.setAttribute("message", message);
    
            RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/user");
        rd.forward(request, response);
    }
 

}