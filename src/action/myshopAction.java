package action;

import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class myshopAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ActionForward forward = new ActionForward();
        HttpSession session = request.getSession();
        InsightDAO dao = new InsightDAO();
        List<ProductDTO> myshoplist = dao.getProduct();
        String userid = request.getParameter("userid");
        myshoplist = dao.MyShop(userid);
        request.setAttribute("myshoplist", myshoplist);

        forward.setRedirect(false);
        forward.setPath("/MyShop.jsp");
        return forward;
    }
}
