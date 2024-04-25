package ph.pup.itech.metrothrift.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.metrothrift.model.RegFormModel;
import ph.pup.itech.metrothrift.dao.RegFormDao;

public class RegistrationForm extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/RegistrationForm":
                getRegForm(request, response);
                break;
            default:
                showForm(request, response);
                break;
        }
    }
        

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getRegForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");   
        String birthday = request.getParameter("birthday");
        String mobile = request.getParameter("mobile");

        RegFormModel Registration = new RegFormModel(
                username, password, confirmPassword, firstname, middlename, lastname, address, birthday, mobile);
        RegFormDao regformDao = new RegFormDao();
        RegFormModel getRegistrationForm = regformDao.getRegFormDetails(Registration);

        request.setAttribute("RegistrationForm", getRegistrationForm);

        String message = getRegistrationForm.getusername() + " user has been added .";
        request.setAttribute("message", message);
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/regform.jsp");
        rd.forward(request, response);
    }
    

    private void showForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/regform.jsp");
        rd.forward(request, response);
    }
}