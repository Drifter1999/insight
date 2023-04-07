package action;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public class productUploadAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        ProductDTO product = new ProductDTO();

        String location = "C:\\insight\\web\\productimage";
        int maxSize = 1024 * 1024 * 5 ;

        try {
            MultipartRequest multi = new MultipartRequest(request, location, maxSize,
                    "UTF-8", new DefaultFileRenamePolicy());

            Enumeration files = multi.getFileNames();

            String fileName1 = null;
            String fileName2 = null;
            String fileName3 = null;

            while (files.hasMoreElements()) {
                String name = (String) files.nextElement();
                String filename = multi.getFilesystemName(name);
                if (name.equals("productImage1")) {
                    fileName1 = "/" + filename;
                } else if (name.equals("productImage2")) {
                    fileName2 = "/" + filename;
                } else if (name.equals("productImage3")) {
                    fileName3 = "/" + filename;
                }
            }

            if(fileName2 == null){
                fileName2 = "";
            }
            if(fileName3 == null){
                fileName3 = "";
            }


            int productCategoryNum = Integer.parseInt(multi.getParameter("productCategoryNum"));
            String productTitle = multi.getParameter("productTitle");
            String productName = multi.getParameter("productName");
            String productDetail = multi.getParameter("productDetail");
            String productPrice = multi.getParameter("productPrice");
            int productQuantity = Integer.parseInt(multi.getParameter("productQuantity"));
            String userid = multi.getParameter("userid");

            product.setProductcategorynum(productCategoryNum);
            product.setUserid(userid.trim());
            product.setProductname(productName);
            product.setProducttitle(productTitle);
            product.setProductdetail(productDetail);
            product.setProductquantity(productQuantity);
            product.setProductprice(productPrice);
            product.setProductimage1(fileName1);
            product.setProductimage2(fileName2);
            product.setProductimage3(fileName3);
            product.setProductstate('Y');

            if (dao.productUpload(product)) {
                forward.setRedirect(true);
                PrintWriter out;
                out = response.getWriter();
                out.println("<script>alert('제품 등록을 완료했습니다. 메인페이지로 이동합니다.');</script>");
                forward.setPath("mainhome.in");
            } else {
                forward.setRedirect(false);
                PrintWriter out;
                out = response.getWriter();
                out.println("<script>alert('제품 등록에 실패했습니다. 다시 시도해주세요.');</script>");
                forward.setPath("mainhome.in");
            }

        }catch (IOException e) {
            throw new RuntimeException(e);
        }
        return forward;
    }
}
