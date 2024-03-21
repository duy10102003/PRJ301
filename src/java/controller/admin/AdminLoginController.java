package controller.admin;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.AdminLoginDao;
import jakarta.servlet.http.Cookie;
import model.Admin;

@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public AdminLoginController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/view/admin/login.jsp");
         dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String username = request.getParameter("admin-username");
        String password = request.getParameter("admin-password");
        String r = request.getParameter("remember");
        
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
        
         Admin admin = new Admin();
         admin.setName(request.getParameter("name"));

        if (AdminLoginDao.checkAdminLogin(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("admin-username", username);
            session.setAttribute("admin-password", password);
            response.sendRedirect(request.getContextPath() + "/admin/homepage");
        } else {
            request.setAttribute("errorMessage", "Tài khoản đăng nhập hoặc mật khẩu sai !!!");
            RequestDispatcher rd = request.getRequestDispatcher("/view/admin/login.jsp");
            rd.forward(request, response);
        }

    }

}
