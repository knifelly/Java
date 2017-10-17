package edu.hfu.model;
import java.sql.*;
import java.util.ArrayList;
public class GoodsBeanBO {
	
	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	
	public int getPageCount(int pageSize){
		
		int pageCount=0;
		int rowCount=0;
		try {
			
			ct=new ConnDB().getConn();
			
			ps=ct.prepareStatement("select count(*) from vedio1");
			
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				rowCount=rs.getInt(1);
					
			}
			
			if(rowCount%pageSize==0){
				
				pageCount=rowCount/pageSize;
			}else{
				
				pageCount=rowCount/pageSize+1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			
			this.close();
		}
		
		return pageCount;
	}
	//分页
	public ArrayList getGoodsByPage(int pageSize,int pageNow){
		
		ArrayList al=new ArrayList();
		
		try {
			
			ct=new ConnDB().getConn();
			
			
			ps=ct.prepareStatement("select top "+pageSize
					+" * from vedio1 where id not in (select top "
					+(pageNow-1)*pageSize+" id from vedio1)");
			
			rs=ps.executeQuery();
			
			while(rs.next()){
				
				GoodsBean gb=new GoodsBean();
				gb.setId(rs.getInt(1));
				gb.setName(rs.getString(2));
				gb.setBrief(rs.getString(3));
				gb.setTeacher(rs.getString(4));
				gb.setPrice(rs.getFloat(5));
				gb.setPhoto(rs.getString(6));
				gb.setView(rs.getString(7));
				gb.setKind(rs.getString(8));
				al.add(gb);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			
			this.close();
		}
		
		return al;
	}
	
	public GoodsBean getGoodsBean(String id){
		
		
		GoodsBean gb=new GoodsBean();
		
		try {
			
			ct=new ConnDB().getConn();
			
			ps=ct.prepareStatement("select * from vedio1 where id=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				gb.setId(rs.getInt(1));
				gb.setName(rs.getString(2));
				gb.setBrief(rs.getString(3));
				gb.setTeacher(rs.getString(4));
				gb.setPrice(rs.getFloat(5));
				gb.setPhoto(rs.getString(6));
				gb.setView(rs.getString(7));
				gb.setKind(rs.getString(8));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			
			//关闭资源
			this.close();
		}
		
		return gb;
		
	}
	
	//关闭函数
	
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
