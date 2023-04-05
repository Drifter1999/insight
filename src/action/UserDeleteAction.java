
package action;

import dao.InsightDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserDeleteAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();

        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");
        System.out.println("DeleteAction Entry" + userid + " : " + userpw);
        InsightDAO dao = new InsightDAO();
        if (dao.UserDelete(userid, userpw)) {

            forward.setRedirect(true);
            forward.setPath("index.jsp");
        }else {

            forward.setRedirect(true);
            forward.setPath("mypage.jsp");
        }


        return forward;
    }
}
