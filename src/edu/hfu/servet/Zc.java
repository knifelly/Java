package edu.hfu.servet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hfu.model.UserBean;
import edu.hfu.model.UserBeanBO;

public class Zc extends HttpServlet {

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
	        String username = request.getParameter("username");  
	        String pwd = request.getParameter("pwd");  
	        String pwd2 = request.getParameter("pwd2");  
	        String email = request.getParameter("email");
	        String tel = request.getParameter("tel");
	        String msg = ""; 
		try { 
			
            if (pwd.equals(pwd2)) {
            	UserBeanBO ubb=new UserBeanBO();
            	 ResultSet rs = ubb.query(username);
            	if(rs.next()){
            		msg = "<script>alert('用户名已存在!')</script>";  
                    request.setAttribute("msg", msg);  
                    request.getRequestDispatcher("zc.jsp").forward(request, response);
            	}
            	else{
            		ubb.insert(username, pwd, email, tel);
            		msg = "<script>alert('注册成功!')</script>";
                    request.setAttribute("msg", msg);
                    request.getRequestDispatcher("test.jsp").forward(request, response);
            		
            	}
            } 
            
              
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
  
    }  
}  
		
		

