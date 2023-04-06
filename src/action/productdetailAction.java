package action;

import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class productdetailAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        int productnum = Integer.parseInt(request.getParameter("productNum"));
        ProductDTO dto = dao.productDetail(productnum);

        request.setAttribute("productlist", dto);
        forward.setRedirect(false);
        forward.setPath("/productdetail.jsp");
        return forward;
    }
}
