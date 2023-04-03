package dao;

import dto.UserDTO;
import mybatis.SqlMapConfig;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.HashMap;

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

    public boolean login(String userid, String userpw) {
        boolean result = false;
        HashMap<String, String> data = new HashMap<>();
        data.put("userid", userid);
        data.put("userpw", userpw);
        if(sqlSession.selectOne("Insight.LoginCheck", data)){

        }
        return result;
    }


}
