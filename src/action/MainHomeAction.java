package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainHomeAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();

        String userid = request.getParameter("userid");
        forward.setPath("mainhome.jsp");
        forward.setRedirect(false);

        return forward;
    }
}
