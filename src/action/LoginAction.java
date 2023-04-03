package action;

import dao.InsightDAO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

public class LoginAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");

        if (dao.login(userid, userpw)) {

        }

        return forward;
    }
}
