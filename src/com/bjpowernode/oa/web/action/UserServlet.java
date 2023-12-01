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
public class UserServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        boolean flag = false;
        String username = request.getParameter("login-user");
        String password = request.getParameter("login-password");

        // 连接数据库验证用户名和密码
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = DBUtil.getConnection();
            String sql = "select * from t_user where username =? and password =?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                // 登录成功
                flag = true;
            } else {
                flag = false;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DBUtil.close(conn, ps, rs);
        }

        if (flag) {
            // 登录成功
           response.sendRedirect(request.getContextPath() + "/dept/list");
        } else {
            // 登录失败
           response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
}






















