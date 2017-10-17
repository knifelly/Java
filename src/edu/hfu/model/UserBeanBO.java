package edu.hfu.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBeanBO {
	

	private ResultSet rs;
	private Connection ct;
	private PreparedStatement ps;
	public ResultSet query(String username) throws SQLException{
		ct=new ConnDB().getConn();
		String sql1="select username from users where username=?";
		ps=ct.prepareStatement(sql1);
		ps.setString(1, username);
		 return ps.executeQuery();
	}
	 
	public boolean insert (String username,String pwd,String email,String tel) throws SQLException{
		
		ct=new ConnDB().getConn();
		ps=ct.prepareStatement("insert into users(username, pwd, email,tel) values(?,?,?,?)");
		ps.setString(1, username);
		ps.setString(2, pwd);
		ps.setString(3, email);
		ps.setString(4, tel);
		
		if (ps.executeUpdate() != 1) {  
            return false;  
        }  
        return true; 
		
	}
public boolean update (String username,String pwd,String email,String tel) throws SQLException{
		
		ct=new ConnDB().getConn();
		ps=ct.prepareStatement("update users set username=?, pwd=?, email=?,tel=? where userid=?");
		ps.setString(1, username);
		ps.setString(2, pwd);
		ps.setString(3, email);
		ps.setString(4, tel);
		
		if (ps.executeUpdate() != 1) {  
            return false;  
        }  
        return true; 
		
	}
	public UserBean getUserBean(String ui){
		
		UserBean ub=new UserBean();
		try {
			
			
			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select top 1 * from users where userid=?");
			ps.setString(1, ui);
			rs=ps.executeQuery();
			if(rs.next()){
				
				ub.setUserid(rs.getLong(1));
				ub.setUsername(rs.getString(2));
				ub.setPwd(rs.getString(3));
				ub.setEmail(rs.getString(4));
				ub.setTel(rs.getString(5));
				ub.setGrade(rs.getInt(6));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			this.close();
		}
		
		return ub;
	}
	
	public boolean checkUser(String ui,String p){
		
		
		boolean b=false;
		
		
		try {
			
			ct=new ConnDB().getConn();
			
			ps=ct.prepareStatement("select top 1 pwd from users where userid=?");
			
			ps.setString(1, ui);
			
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				String dbPwd=rs.getString(1);
				
				if(dbPwd.equals(p)){
					
					b=true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		finally{
			
			this.close();
		}
		
		return b;
		
	}
	
	public void close(){
		
		try {
			
			if(rs!=null){
				
				rs.close();
				rs=null;//
			}
			if(ps!=null){
				
				ps.close();
				ps=null;
			}
			
			if(!ct.isClosed()){
				
				ct.close();
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
