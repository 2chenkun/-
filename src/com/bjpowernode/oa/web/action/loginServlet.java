package com.bjpowernode.oa.web.action;


import com.bjpowernode.oa.utils.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet("/user/login")
public class loginServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        boolean flag = false;
        String username = request.getParameter("sign-user");
        String password = request.getParameter("sign-password");
        String password1 = request.getParameter("sign-password1");

        // 连接数据库验证用户名和密码
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        if (password.equals(password1)){
            try {
                conn = DBUtil.getConnection();
                String sql = "insert into t_user values(null,?,?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, password);
                int count = ps.executeUpdate();
                if (count == 1) {
                    // 登录成功
                    response.sendRedirect(request.getContextPath() + "/dept/list");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                DBUtil.close(conn, ps, rs);
            }
        } else {
            // 登录失败
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
}























//loginServlet