package action;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;

public class productUploadAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ActionForward forward = new ActionForward();
        InsightDAO dao = new InsightDAO();
        ProductDTO product = new ProductDTO();

        String location = "C:\\insight\\productimage";
        int maxSize = 1024 * 1024 * 5 ;

        MultipartRequest multi = new MultipartRequest(request, location, maxSize,
                    "UTF-8", new DefaultFileRenamePolicy());

        int productCategoryNum = Integer.parseInt(multi.getParameter("productCategoryNum"));
        String productTitle = multi.getParameter("productTitle");
        String productName = multi.getParameter("productName");
        String productDetail = multi.getParameter("productDetail");
        String productPrice = multi.getParameter("productPrice");
        int productQuantity = Integer.parseInt(multi.getParameter("productQuantity"));
        SimpleDateFormat productDate = new SimpleDateFormat("yyyy년 MM월 dd일");
        String Imagepath = location + "/" + productTitle;
        String original = multi.getFileNames().toString();
        System.out.println(original);


        System.out.println("productCategoryNum : "+productCategoryNum);
        System.out.println("productTitle : "+productTitle);
        System.out.println("productName : "+productName);
        System.out.println("productDetail : "+productDetail);
        System.out.println("productCategoryNum : "+productCategoryNum);
        System.out.println("productPrice : "+productPrice);
        System.out.println("productQuantity : "+productQuantity);


        product.setProductcategorynum(productCategoryNum);
        product.setProductdate(productDate);
        product.setProductdetail(productDetail);
        product.setProductname(productName);
        product.setProductimage1(Imagepath);









        if(dao.productUpload(product)){
            forward.setPath("mainhome.in");
        }else{
            forward.setPath("mainhome.in");
        }
        forward.setRedirect(true);
        return forward;
    }
}
