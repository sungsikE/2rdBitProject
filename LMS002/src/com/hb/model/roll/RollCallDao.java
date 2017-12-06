package com.hb.model.roll;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.MyOracle;

public class RollCallDao {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	ArrayList<RollDto> roll;
	
	public ArrayList<RollDto> todayRoll(){
		String sql="select * from stu where status='수강중'";
		conn=MyOracle.getConnection();
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			roll = new ArrayList<RollDto>();
			while(rs.next()){
				RollDto bean= new RollDto();
				bean.setStuid(rs.getInt("sid"));
				bean.setStuname(rs.getString("sname"));
				bean.setSclass(rs.getInt("regclass"));
				roll.add(bean);				
			}
		}catch(Exception e){
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return roll;
	}
}
