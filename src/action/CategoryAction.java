package action;

import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CategoryAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        List<ProductDTO> list = dao.AllProduct();

        request.setAttribute("AllProduct", list);
        forward.setRedirect(true);
        forward.setPath("/category.jsp");

        return forward;
    }
}
