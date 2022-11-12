package DorySystem.service;

import DorySystem.dao.Mapper;
import DorySystem.model.Account;
import DorySystem.model.Dorimitory;
import DorySystem.utils.MybatisUtils;
import com.alibaba.fastjson.JSON;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/insstustuselect")
public class ins_stu_stuselect extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        Mapper mapper = sqlSession.getMapper(Mapper.class);

        Account account = (Account) req.getSession().getAttribute("account");
        String sinstructor = account.getName();

        List<Dorimitory> dory = mapper.selInsStu(sinstructor);

        String s = JSON.toJSONString(dory);

        resp.setContentType("text/json;charset=utf-8");
        resp.getWriter().write(s);

        sqlSession.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
