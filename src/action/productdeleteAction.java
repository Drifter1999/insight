package action;

import dao.InsightDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class productdeleteAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();

        int productnum = Integer.parseInt(request.getParameter("productnum"));

        if(dao.productdelete(productnum)){

            forward.setRedirect(true);
            forward.setPath("MyShop.jsp");
        }else {

            forward.setRedirect(true);
            forward.setPath("MyShop.jsp");
        }

        return forward;
    }
}
