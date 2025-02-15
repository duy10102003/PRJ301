package controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.Catalog;
import model.Product;
import model.Transactions;
import dao.CategoryDao;
import dao.ProductDao;
import dao.TransactionDao;
import dao.impl.CategoryDaoImpl;
import dao.impl.ProductDaoImpl;
import dao.impl.TransactionDaoImpl;

public class OrderEditController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	TransactionDao transactionDao = new TransactionDaoImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		Transactions transaction = transactionDao.get(Integer.parseInt(id));
		req.setAttribute("order", transaction);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editorder.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		Transactions transactions = new Transactions();
		transactions.setId(Integer.parseInt(req.getParameter("order-id")));
		transactions.setUser_name(req.getParameter("order-name"));
		transactions.setUser_mail(req.getParameter("order-mail"));
		transactions.setUser_phone(req.getParameter("order-phone"));
		transactions.setAddress(req.getParameter("order-address"));
		transactions.setMessage(req.getParameter("order-mess"));
		transactions.setAmount(req.getParameter("order-amount"));
		transactions.setPayment(req.getParameter("order-payment"));
		transactions.setStatus(req.getParameter("order-status"));
		transactionDao.edit(transactions);
		resp.sendRedirect(req.getContextPath()+"/admin/order/list");

	}
}
