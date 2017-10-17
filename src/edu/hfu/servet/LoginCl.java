package edu.hfu.servet;
import edu.hfu.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hfu.model.MyCartBO;
import edu.hfu.model.UserBean;
import edu.hfu.model.UserBeanBO;

public class LoginCl extends HttpServlet {

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
		this.doGet(request, response);
	
		
		
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
		
		String ui=request.getParameter("userid");
		String msg1="";
		String p=request.getParameter("pwd");
		UserBeanBO ubb=new UserBeanBO();
		
		if(ubb.checkUser(ui, p))
		{
			UserBean ub=ubb.getUserBean(ui);
			request.getSession().setAttribute("userInfo", ub);
			
			
			MyCartBO mcb=(MyCartBO)request.getSession().getAttribute("mycart");
			
		    if(mcb==null){
		    	msg1="<script>alert('尊贵的会员，欢迎您进入第一课堂网络学习平台！!')</script>";
				request.setAttribute("msg1", msg1);
		    	request.getRequestDispatcher("face.jsp").forward(request, response);
		    	
		    }
		    else{
		    	ArrayList al=mcb.showMyCart();
				request.setAttribute("mycartInfo", al);
				msg1="<script>alert('登陆成功，祝您购物愉快！!')</script>";
				request.setAttribute("msg1", msg1);
		    	request.getRequestDispatcher("order.jsp").forward(request, response);
		    	
		    }
			
		}
		else
		{
			msg1="<script>alert('用户号或密码错误，请确认后重新输入！')</script>";
			request.setAttribute("msg", msg1);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
      
		
	}

}
