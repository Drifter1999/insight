package action;

import dao.InsightDAO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

public class LoginAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");

        System.out.println("userid = "+userid);
        System.out.println("userpw = "+userpw);
        if(dao.login(userid, userpw) != null){
            forward.setRedirect(false);
            forward.setPath("mainhome.in?userid="+userid);
        }else{
            try {
                forward.setRedirect(false);
                PrintWriter out;
                out = response.getWriter();
                out.println("<script>alert('로그인에 실패했습니다. 다시 시도해주세요.');history.back();</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return forward;
    }

}

