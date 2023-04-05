package dto;

import java.text.SimpleDateFormat;

public class ProductDTO {
    private int productnum;
    private int productcategorynum;
    private String userid;
    private String productname;
    private String producttitle;
    private String productdetail;
    private int productquantity;
    private String productprice;
    private String productimage1;
    private String productimage2;
    private String productimage3;
    private String productdate;
    private char   productstate;

    public int getProductnum() {
        return productnum;
    }

    public void setProductnum(int productnum) {
        this.productnum = productnum;
    }

    public int getProductcategorynum() {
        return productcategorynum;
    }

    public void setProductcategorynum(int productcategorynum) {
        this.productcategorynum = productcategorynum;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProducttitle() {
        return producttitle;
    }

    public void setProducttitle(String producttitle) {
        this.producttitle = producttitle;
    }

    public String getProductdetail() {
        return productdetail;
    }

    public void setProductdetail(String productdetail) {
        this.productdetail = productdetail;
    }

    public int getProductquantity() {
        return productquantity;
    }

    public void setProductquantity(int productquantity) {
        this.productquantity = productquantity;
    }

    public String getProductprice() {
        return productprice;
    }

    public void setProductprice(String productprice) {
        this.productprice = productprice;
    }

    public String getProductimage1() {
        return productimage1;
    }

    public void setProductimage1(String productimage1) {
        this.productimage1 = productimage1;
    }

    public String getProductimage2() {
        return productimage2;
    }

    public void setProductimage2(String productimage2) {
        this.productimage2 = productimage2;
    }

    public String getProductimage3() {
        return productimage3;
    }

    public void setProductimage3(String productimage3) {
        this.productimage3 = productimage3;
    }

    public String getProductdate() {
        return productdate;
    }

    public void setProductdate(String productdate) {
        this.productdate = productdate;
    }

    public char getProductstate() {
        return productstate;
    }

    public void setProductstate(char productstate) {
        this.productstate = productstate;
    }
}
