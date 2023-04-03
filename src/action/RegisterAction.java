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

        System.out.println("userid : "+userid);
        System.out.println("username : "+username);
        System.out.println("userpw : "+userpw);
        System.out.println("useremail : "+useremail);
        System.out.println("useraddr : "+useraddr);
        System.out.println("userphone : "+userphone);

        user.setUserid(userid);
        user.setUserid(username);
        user.setUserid(userpw);
        user.setUserid(useremail);
        user.setUserid(useraddr);
        user.setUserid(userphone);

        if(dao.register(user)){
            forward.setPath("/mainhome.in");
        }else{
            forward.setPath("/mainhome.in");
        }
        forward.setRedirect(true);
        return forward;
    }
}
