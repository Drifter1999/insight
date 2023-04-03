package controller;

import action.Action;
import action.ActionForward;
import action.LoginAction;
import action.RegisterAction;

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

    protected void doProcess(HttpServletRequest request, HttpServletResponse response){
        String requestURI = request.getRequestURI();
        ActionForward forward = null;

        switch(requestURI) {
            case "/login.in":
                System.out.println("인텔리제이 체크");
                forward = new LoginAction().execute(request, response);

                break;

            case "/register.in":
                forward = new RegisterAction().execute(request, response);

                break;
        }
    }
}
