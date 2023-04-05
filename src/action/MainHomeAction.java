package action;

import dao.InsightDAO;
import dto.ProductDTO;
import dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class MainHomeAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        HttpSession session = request.getSession();
        List<ProductDTO> list = dao.getProduct();


        session.setAttribute("productlist", list);
        session.setMaxInactiveInterval(60 * 10);
        forward.setRedirect(true);
        forward.setPath("/mainhome.jsp");
        return forward;
    }
}