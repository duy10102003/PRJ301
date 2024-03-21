package controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.Boardnew;
import dao.BoardnewDao;
import dao.impl.BoardnewDaoImpl;

/**
 * Servlet implementation class CategoryListController
 */
//@WebServlet(urlPatterns = { "/admin/new/list" })
public class BoardnewListController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	BoardnewDao newDao = new BoardnewDaoImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Boardnew> boardnewList = newDao.getAll();
		req.setAttribute("boardnewlist", boardnewList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/show-new.jsp");
		dispatcher.forward(req, resp);
	}
}
