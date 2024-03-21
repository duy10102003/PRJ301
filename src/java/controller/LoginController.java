package controller;

import dao.UserDao;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.impl.LoginDao;
import dao.impl.UserDaoImpl;
import jakarta.servlet.http.Cookie;
import model.User;



public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    UserDao us = new UserDaoImpl();
    public LoginController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/view/client/login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String r = request.getParameter("remember");
        
        User info = us.get(username);
        LoginDao loginDao = new LoginDao();
        //tao 3 cookies
        Cookie cu = new Cookie("cuser", username);
        Cookie cp = new Cookie("cpass", password);
        Cookie cr = new Cookie("crem", r);
        
        if(r!=null) {
            //chon
            cu.setMaxAge(60*60*24*10);
            cr.setMaxAge(60*60*24*10);
            cp.setMaxAge(60*60*24*10);
        } else {
            cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        // luu vao browser
        response.addCookie(cr);
        response.addCookie(cu);
        response.addCookie(cp);
        try {
            User u = loginDao.checkLogin(username, password);
            if (u != null) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("info", info);
                response.sendRedirect(request.getContextPath() + "/");
            } else {
                request.setAttribute("errorMsg", "Tài khoản đăng nhập hoặc mật khẩu sai !!!");
                RequestDispatcher rd = request.getRequestDispatcher("/view/client/login.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
