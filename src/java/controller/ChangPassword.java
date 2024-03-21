/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author DUYLC10
 */
public class ChangPassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String id_raw = request.getParameter("id");
        int id = Integer.parseInt(id_raw);
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String renewpassword = request.getParameter("renewpassword");
        String msg = "";
        UserDao UD = new UserDaoImpl();
        User u = UD.get(id);
        if (u.getPassword().compareTo(oldpassword)!=0) {
            msg = "Sai mật khẩu";
        } else {
            if (!newpassword.equals(renewpassword)) {
                msg = "Mật khẩu mới không khớp";
            } else {
                User user = new User();
                
                UD.editpass(newpassword, id);
                u = UD.get(id);
                session.removeAttribute("info");
                session.setAttribute("info", u);
                msg = "Đổi mật khẩu thành công";
            }
        }
        request.setAttribute("msg", msg);
        request.getRequestDispatcher("/view/client/changepass.jsp").forward(request, response);
    }

}
