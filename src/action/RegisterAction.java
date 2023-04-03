package action;

import dao.InsightDAO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
            forward.setPath("/mainhome.in");
        }else{
            forward.setPath("/mainhome.in");
        }
        forward.setRedirect(true);
        return forward;
    }
}
