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
        HttpSession session = request.getSession();
        InsightDAO dao = new InsightDAO();
        int productnum = Integer.parseInt(request.getParameter("productNum"));
        ProductDTO dto = dao.productDetail(productnum);
        System.out.println(productnum);
        System.out.println(dto.getProductdetail());
        System.out.println(dto.getProductprice());

        session.setAttribute("productlist", dto);
        session.setMaxInactiveInterval(60 * 10);
        forward.setRedirect(true);
        forward.setPath("/productdetail.jsp");
        return forward;
    }
}
