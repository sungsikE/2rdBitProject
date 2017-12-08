package com.hb.model.roll;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.model.QnADto;
import com.hb.util.MyOracle;

public class AbsenceDao {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public ArrayList selectAll(){
		ArrayList<RollDto> alist = new ArrayList<RollDto>();
		conn=MyOracle.getConnection();
		
		String sql="select * from roll where status='�Ἦ' or status='����' or status='����' order by stuid, status, calldate";
		try{
			
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				RollDto bean= new RollDto();
				bean.setRollid(rs.getInt("rollid"));
				bean.setCalldate(rs.getDate("calldate"));
				bean.setStuid(rs.getInt("stuid"));
				bean.setStuname(rs.getString("stuname"));
				bean.setSclass(rs.getInt("sclass"));
				bean.setStatus(rs.getString("status"));
				alist.add(bean);	
			}
			
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			
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
		return alist;
	}//method end

	//�й�, �ѰἮ��, ������/������, �⼮��
	public ArrayList sumAll(){
		ArrayList<AbsenceDto> alist = new ArrayList<AbsenceDto>();
		
		conn=MyOracle.getConnection();
		
		String sql="select stuid, count(*) from roll where status='�Ἦ' group by stuid";
		
		try{
			
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				AbsenceDto bean= new AbsenceDto();
				bean.setStuid(rs.getInt("stuid"));
				bean.setTotalAbsence(rs.getInt("count(*)"));
				alist.add(bean);	
			}
			
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			
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
		return alist;
	}//method end	
	
}
