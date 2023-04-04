package action;

import dao.InsightDAO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
        UserDTO dto = dao.login(userid, userpw);

        if( dto != null){
            /*로그인 성공 시*/
            HttpSession session = request.getSession();
            /*세션 객체 생성*/
            session.setAttribute("userSession", dto);
            /*userSession 의 이름으로 로그인 객체 저장 */
            session.setMaxInactiveInterval(60*10);
            /*세션 10분간 유지*/
            forward.setPath("/mainhome.in");

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
        forward.setRedirect(true);
        return forward;
    }

}

