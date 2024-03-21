package controller.admin;

import dao.AdminDao;
import dao.impl.AdminDaoImpl;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.DecimalFormat;

public class AdminHomePage extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private DecimalFormat df = new DecimalFormat("#.0");
    private DecimalFormat df1 = new DecimalFormat("#.000");
   // private DecimalFormat df3 = new DecimalFormat("##.##%");

    public AdminHomePage() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminDao adminDao = new AdminDaoImpl();
        
        // đơn hàng
        int count = adminDao.numberOforder();
        int countBefore = adminDao.numberOforderBefore();
        double incre1 = ((count-countBefore)/(countBefore))*100;
        request.setAttribute("incre1", df1.format(incre1));
        request.setAttribute("count", count);
        //khoản thu
        double total = adminDao.totalAmount();
        double totalBefore = adminDao.totalAmountBefore();
        double incre2  = ((total-totalBefore)/(totalBefore))*100;    
        request.setAttribute("incre2", df1.format(incre2));
        request.setAttribute("total", df1.format(total));
        // Số lượng sản phẩm bán ra
        int countPro = adminDao.numberOfPro();
        int countProBefore = adminDao.numberOfproBefore();
        double incre3 = ((countPro-countProBefore)/(countProBefore))*100;
        request.setAttribute("incre3", df1.format(incre3));
        request.setAttribute("countPro", countPro);
        
        // Danh muc ban chay
        
        int sum1 = adminDao.sumQty(1);
        int sum2 = adminDao.sumQty(2);
        int sum3 = adminDao.sumQty(3);
        int sum4 = adminDao.sumQty(4);
        total = sum1 + sum2 + sum3 + sum4;
        double per1 = (sum1/total)*100;
        double per2 = (sum2/total)*100;
        double per3 = (sum3/total)*100;
        double per4 = (sum4/total)*100;
        
        double sumP1 = adminDao.sumPrice(1);
        double sumP2 = adminDao.sumPrice(2);
        double sumP3 = adminDao.sumPrice(3);
        double sumP4 = adminDao.sumPrice(4);
        
        request.setAttribute("sumP1", sumP1 ==0 ? 0:df1.format(sumP1));
        request.setAttribute("per1", df1.format(per1));
        
        request.setAttribute("sumP2", sumP2 ==0 ? 0:df1.format(sumP2));
        request.setAttribute("per2", df1.format(per2));
        
        request.setAttribute("sumP3", sumP3 ==0 ? 0: df1.format(sumP3));
        request.setAttribute("per3",  df1.format(per3));
        
        request.setAttribute("sumP4", sumP4 ==0 ? 0: df1.format(sumP4));
        request.setAttribute("per4", df1.format(per4));
        
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/index.jsp");
        dispatcher.forward(request, response);
    }

}
