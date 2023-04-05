package action;

import dao.InsightDAO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserUpdateAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        UserDTO dto = new UserDTO();
        InsightDAO dao = new InsightDAO();

        String userid = request.getParameter("userid");
        String username = request.getParameter("username");
        String userpw = request.getParameter("userpw");
        String useremail = request.getParameter("useremail");
        String useraddr = request.getParameter("useraddr");
        String userphone = request.getParameter("userphone");

        dto.setUserid(userid);
        dto.setUsername(username);
        dto.setUserpw(userpw);
        dto.setUseremail(useremail);
        dto.setUseraddr(useraddr);
        dto.setUserphone(userphone);

        if (dao.UserUpdate(dto)){
            System.out.println("성공");
            forward.setRedirect(true);
            forward.setPath("index.jsp");
        }else {
            System.out.println("실패");
            forward.setRedirect(true);
            forward.setPath("mypage.jsp");
        }

        return forward;
    }
}
