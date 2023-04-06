package action;

import dao.InsightDAO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterAction implements Action{

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        UserDTO user = new UserDTO();
        String userid = request.getParameter("userid");
        String username = request.getParameter("username");
        String userpw = request.getParameter("userpw");
        String useremail = request.getParameter("useremail");
        String useraddr = request.getParameter("useraddr");
        String userphone = request.getParameter("userphone");

        user.setUserid(userid);
        user.setUsername(username); 
        user.setUserpw(userpw);
        user.setUseremail(useremail);
        user.setUseraddr(useraddr);
        user.setUserphone(userphone);

        if(dao.register(user)){
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<script>alert('회원가입에 성공했습니다. 로그인 페이지로 이동합니다.');</script>");
                forward.setPath("mainhome.in");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        }else{
            try {
                PrintWriter out;
                out = response.getWriter();
                out.println("<script>alert('회원가입에 실패했습니다. 다시 시도해주세요.');</script>");
                forward.setPath("mainhome.in");
            } catch (IOException e){
                throw new RuntimeException(e);
            }
        }
        forward.setRedirect(true);
        return forward;
    }
}
