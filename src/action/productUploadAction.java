package action;

import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class productUploadAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        ProductDTO product = new ProductDTO();

        int productCategoryNum = Integer.parseInt(request.getParameter("productCategoryNum"));
        String productTitle = request.getParameter("productTitle");
        String productName = request.getParameter("productName");
        String productDetail = request.getParameter("productDetail");
        String productPrice = request.getParameter("productPrice");
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));



        if(dao.productUpload(product)){
            forward.setPath("mainhome.in");
        }else{
            forward.setPath("mainhome.in");
        }
        forward.setRedirect(true);
        return forward;
    }
}
