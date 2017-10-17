package edu.hfu.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import edu.hfu.model.ConnDB;
public class MyCartBO {
	
	HashMap<String,String> hm=new HashMap<String,String>();

	private ResultSet rs;
	private Connection ct;
	private PreparedStatement ps;
	
	private float sum=0;
	public float getAllPrice(){
		
		return this.sum;
	}
	
	//1.添加货物
	public void addGoods(String id ){
		
		hm.put(id, null);
	}
	
	//2.删除货物
	public void delGoods(String id){
		
		hm.remove(id);
	}
	//3.清空货物
	
	public void clear(){
		
		hm.clear();
		sum=0;
	}
	
	//4.显示购物车
	public ArrayList showMyCart(){
		
		ArrayList <GoodsBean> al=new ArrayList <GoodsBean>();
		
		try {
			String sql="select * from vedio1 where id in";
			Iterator it=hm.keySet().iterator();
			String sub="(";
			while(it.hasNext()){
				
				String id=(String)it.next();
				if(it.hasNext())
				{
				sub+=id+",";
				}
				else{
					
					sub+=id+")";
				}
			}
			
			sql+=sub;
			
            ct=new ConnDB().getConn();
			
			ps=ct.prepareStatement(sql);
			
			rs=ps.executeQuery();
			sum=0;
			while(rs.next()){
				GoodsBean gb=new GoodsBean();
				int id=rs.getInt(1);
				gb.setId(id);
				gb.setName(rs.getString(2));
				gb.setBrief(rs.getString(3));
				float unit=rs.getFloat(5);
				gb.setPrice(unit);
				sum=sum+unit;
				gb.setTeacher(rs.getString(4));
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

