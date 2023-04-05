package controller;

import action.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.in")
public class InsightFrontController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String requestURI = request.getRequestURI();
        ActionForward forward = null;


        switch(requestURI) {
            case "/login.in":
                forward = new LoginAction().execute(request, response);

                break;
            case "/register.in":
                forward = new RegisterAction().execute(request, response);

                break;

            case "/mainhome.in":
                forward = new ActionForward(true, "/mainhome.jsp");
                break;

            case "/productUpload.in":
                forward = new productUploadAction().execute(request, response);
                break;

            case "/UserUpdate.in":
                /*forward = new UserUpdateAction().execute(request, response);*/
                String userpw = request.getParameter("userpw");
                System.out.println("userpw : "+userpw);
            case "/Logout.in":
                forward = new LogoutAction().execute(request, response);
                break;
        }

        if( forward != null) {
            if(forward.isRedirect()) {
                //true : redirect
                response.sendRedirect(forward.getPath());

            }else {
                // false : forward
                RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
                disp.forward(request, response);
            }
        }
    }
}

