package ph.pup.itech.metrothrift.controller;

import java.io.IOException;
import java.util.ArrayList;
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
            case "/regform/create/form":
                showRegformCreateForm(request, response);
                break;
            case "/regform/create":
                createRegform(request, response);
                break;
            case "/regform/update/form":
                showRegformUpdateForm(request, response);
                break;
            case "/regform/update":
                updateRegform(request, response);
                break;
            case "/regform/delete":
                deleteRegform(request, response);
                break;
            default:
                viewRegform(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewRegform(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RegFormDao regform = new RegFormDao();
        ArrayList<RegFormModel> regformList = regform.getRegformList();
        request.setAttribute("regformList", regformList);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/log-in-page.jsp");
        rd.forward(request, response);
    }

    private void showRegformCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/regform.jsp");
        rd.forward(request, response);
    }

    private void createRegform(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String mobile = request.getParameter("mobile");

        RegFormDao regform = new RegFormDao();
        RegFormModel createRegform = new RegFormModel(
                username, password, confirmPassword, firstName, middleName, lastName, address, birthday, mobile);
        regform.createRegform(createRegform);

        request.setAttribute("username", username);
        String message = "User " + username + " has been added.";
        request.setAttribute("message", message);

        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/regform");
        rd.forward(request, response); 
    }

    private void showRegformUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        RegFormDao regform = new RegFormDao();
        RegFormModel regformDetails = regform.getRegformDetails(username);
        request.setAttribute("regformDetails", regformDetails);

        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/RegFormUpdate.jsp");
        rd.forward(request, response);

    }

        private void updateRegform(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            String firstName = request.getParameter("firstName");
            String middleName = request.getParameter("middleName");
            String lastName = request.getParameter("lastName");
            String address = request.getParameter("address");
            String birthday = request.getParameter("birthday");
            String mobile = request.getParameter("mobile");

            RegFormDao regform = new RegFormDao();
            RegFormModel updateRegform = new RegFormModel(
                    username, password, confirmPassword, firstName, middleName, lastName, address, birthday, mobile);
            regform.updateRegform(updateRegform);

            request.setAttribute("username", username);
            String message = "User " + username + " has been updated.";
            request.setAttribute("message", message);

            RequestDispatcher rd = getServletContext().getRequestDispatcher(
                    "/regform");
            rd.forward(request, response);
        }

    private void deleteRegform(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username= request.getParameter("username");
        RegFormDao regform = new RegFormDao();
        regform.deleteRegform(username);

    request.setAttribute("username", username);
    String message = "User " + username + " has been deleted.";
    request.setAttribute("message", message);
    
            RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/regform");
        rd.forward(request, response);
    }
}
