package action;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import dao.InsightDAO;
import dto.ProductDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Enumeration;

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

        Enumeration files = multi.getFileNames();

        String fileName1 = null;
        String fileName2 = null;
        String fileName3 = null;

        while(files.hasMoreElements()){
            String name = (String)files.nextElement();
            String filename = multi.getFilesystemName(name);
            if(name.equals("productImage1")){
                fileName1 = filename;
            }else if(name.equals("productImage2")){
                fileName2 = filename;
            }else if(name.equals("productImage3")){
                fileName3 = filename;
            }
        }

        int productCategoryNum = Integer.parseInt(multi.getParameter("productCategoryNum"));
        String productTitle = multi.getParameter("productTitle");
        String productName = multi.getParameter("productName");
        String productDetail = multi.getParameter("productDetail");
        String productPrice = multi.getParameter("productPrice");
        int productQuantity = Integer.parseInt(multi.getParameter("productQuantity"));
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일");
        LocalDate date = LocalDate.now();
        String productDate = dtf.format(date);

        String userid = multi.getParameter("userid");

        String Imagepath1 = location + "/" + fileName1;
        String Imagepath2 = location + "/" + fileName2;
        String Imagepath3 = location + "/" + fileName3;


        System.out.println("userid : "+ userid);
        System.out.println("productCategoryNum : "+productCategoryNum);
        System.out.println("productTitle : "+productTitle);
        System.out.println("productName : "+productName);
        System.out.println("productDetail : "+productDetail);
        System.out.println("productCategoryNum : "+productCategoryNum);
        System.out.println("productPrice : "+productPrice);
        System.out.println("productQuantity : "+productQuantity);
        System.out.println("productDate : "+ productDate);
        System.out.println("Imagepath1 : " + Imagepath1);
        System.out.println("Imagepath2 : " + Imagepath2);
        System.out.println("Imagepath3 : " + Imagepath3);


        product.setProductcategorynum(productCategoryNum);
        product.setUserid(userid.trim());
        product.setProductname(productName);
        product.setProducttitle(productTitle);
        product.setProductdetail(productDetail);
        product.setProductquantity(productQuantity);
        product.setProductprice(productPrice);
        product.setProductimage1(Imagepath1);
        product.setProductimage2(Imagepath2);
        product.setProductimage3(Imagepath3);
        product.setProductdate(productDate);
        product.setProductstate('Y');

        if(dao.productUpload(product)){
            forward.setPath("mainhome.in");
        }else{
            forward.setPath("mainhome.in");
        }
        forward.setRedirect(true);
        return forward;
    }
}
