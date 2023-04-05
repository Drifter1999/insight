package action;

import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class MainHomeAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();


        String userid = request.getParameter("userid");

        List<ProductDTO> list =dao.getProduct();

        request.setAttribute("productlist",list);

        forward.setPath("mainhome.jsp");
        forward.setRedirect(false);

        return forward;
    }
}
