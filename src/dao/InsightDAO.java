package dao;

import dto.ProductDTO;
import dto.UserDTO;
import mybatis.SqlMapConfig;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class InsightDAO {
    SqlSessionFactory factory = SqlMapConfig.getFactory();
    SqlSession sqlSession;

    public InsightDAO() {
        sqlSession = factory.openSession(true);
    }

    public boolean register(UserDTO dto){
        boolean result = false;

        if(sqlSession.insert("Insight.insert", dto) == 1){
            result = true;
        }
        return result;
    }

    public UserDTO login(String userid, String userpw) {
        HashMap<String, String> data = new HashMap<>();
        data.put("userid", userid);
        data.put("userpw", userpw);

        return sqlSession.selectOne("Insight.LoginCheck", data);
    }

    public boolean UserCheck(String userid) {
        boolean result = false;
        if ((Integer)sqlSession.selectOne("Insight.UserCheck", userid) != 0){
            
            result = true;
        }
        return result;

    }

    public boolean productUpload(ProductDTO product) {
        boolean result = false;

        if(sqlSession.insert("Insight.ProductInsert", product) == 1){
            result = true;
        }
        return result;
    }

    public boolean UserUpdate(UserDTO userDTO) {
        boolean result = false;

        if((Integer)sqlSession.update("Insight.UserUpdate", userDTO) != 0){
            result = true;
        }

        return result;

    }

    public boolean UserDelete(String userid, String userpw) {
        boolean result = false;
        HashMap<String, String> datas = new HashMap<>();
        datas.put("userid", userid);
        datas.put("userpw", userpw);
        if((Integer)sqlSession.delete("Insight.UserDelete",datas) != 0) {
            result = true;
        }
        return  result;
    }

    public List<ProductDTO> getProduct() {
        return (ArrayList) sqlSession.selectList("Insight.ProductSelectDESC");
    }

    public ProductDTO productDetail(int productnum) {
        ProductDTO result = (ProductDTO)sqlSession.selectOne("Insight.ProductDetail", productnum);

        return result;
    }

    public List<ProductDTO> OneCategory(String cname) {
        int categorynum = sqlSession.selectOne("Insight.SelectCategoryNumber", cname);
        List<ProductDTO> arr =new ArrayList<>();
        arr = sqlSession.selectList("Insight.OneCategory", categorynum);

        return arr;
    }


    public List<ProductDTO> AllProduct() {
        return sqlSession.selectList("Insight.AllProduct");

    }

    public List<ProductDTO> MyShop(String userid) {
        return (ArrayList) sqlSession.selectList("Insight.MyShop", userid);
    }

    public boolean productdelete(int productnum){
        boolean result = false;
        if(sqlSession.delete("Insight.ProductDelete",productnum)==1) {
            result = true;
        }

        return result;
    }
}


