package ph.pup.itech.metrothrift.controller;
import java.io.IOException;
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
         try {
            getForm(request, response);
        } finally {
            showForm(request, response);
        } 
         
//        String action = request.getServletPath();
//        switch (action) {
//            case "/employee/create/form":
//                showUserCreateForm(request, response);
//                break;
//            case "/employee/create":
//                createUser(request, response);
//                break;
//            case "/employee/update/form":
//                showUserUpdateForm(request, response);
//                break;
//            case "/employee/update":
//                updateUser(request, response);
//                break;
//            case "/employee/delete":
//                deleteUser(request, response);
//                break;
//            default:
//                viewUser(request, response);
//                break;
//        }
        
    }

    
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getServletPath();
//        switch (action) {
//            case "/user/create":
//            getForm(request, response);
//            default:
//            showForm(request, response);
//            break;
//        }
//    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
//    private void showUserCreateForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        RequestDispatcher rd = getServletContext().getRequestDispatcher(
//                "/WEB-INF/Employee/EmployeeCreate.jsp");
//        rd.forward(request, response);
//    }
    private void getForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int UserID = Integer.parseInt(request.getParameter("UserID"));
        String Firstname = request.getParameter("Firstname");
        String Middlename = request.getParameter("Middlename");
        String Lastname = request.getParameter("Lastname");
        String UserRole = request.getParameter("UserRole");

        
        UserformModel user = new UserformModel(
                UserID, Firstname, Middlename, Lastname, UserRole);
        UserformDao userformDao = new UserformDao();
        UserformModel getForm = userformDao.getuserDetails(user);

        request.setAttribute("user", getForm);      



        String message = getForm.getUserID() + " user has been added";
        request.setAttribute("message", message);

        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/User.jsp");
        rd.forward(request, response);
    }

    private void showForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/User.jsp");
        rd.forward(request, response);
    }
}

