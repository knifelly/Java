package edu.hfu.servet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hfu.model.*;


import edu.hfu.model.*;
public class ShowGoodsClServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
		
	}
		
		
	

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String type=request.getParameter("type");
		if(type.equals("showDetail"))
		{
		String Id=request.getParameter("id");
		//调用GoodsBeanBO(小红)[可以给你得到货物的具体信息]
		GoodsBeanBO gbb=new GoodsBeanBO();
		
		GoodsBean gb=gbb.getGoodsBean(Id);
		
		request.setAttribute("brief", gb);
		
		request.getRequestDispatcher("showDetail.jsp").forward(request, response);
		}
		else if(type.equals("fenye")) {
			
			String pageNow=request.getParameter("pageNow");
			
			request.setAttribute("abc", pageNow);
			
			request.getRequestDispatcher("hall.jsp").forward(request, response);
		}
		
	}
}



