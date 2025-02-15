package controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.Catalog;
import model.Product;
import dao.CategoryDao;
import dao.ProductDao;
import dao.impl.CategoryDaoImpl;
import dao.impl.ProductDaoImpl;

/**
 * Servlet implementation class ProductEditController
 */

public class ProductEditController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ProductDao productDao = new ProductDaoImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDao cateDao = new CategoryDaoImpl();
		List<Catalog> cateList = cateDao.getAll();
		req.setAttribute("catelist", cateList);
		
		String id = req.getParameter("id");
		Product product = productDao.get(Integer.parseInt(id));
		req.setAttribute("product", product);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editproduct.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		Product product = new Product();
		product.setId(req.getParameter("product-sku"));
		product.setCatalog_id(req.getParameter("product-cate"));
		product.setName(req.getParameter("product-name"));
		product.setPrice(req.getParameter("product-price"));
		product.setStatus(req.getParameter("product-status"));
		product.setDescription(req.getParameter("product-desc"));
		product.setContent(req.getParameter("product-content"));
		product.setDiscount(req.getParameter("product-discount"));
		product.setImage_link(req.getParameter("product-image"));
		product.setCreated(req.getParameter("product-day"));
		productDao.edit(product);
		
		resp.sendRedirect(req.getContextPath()+"/admin/product/list");

	}
}