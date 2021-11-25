package com.carlend.dao;

import java.beans.beancontext.BeanContext;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.carlend.beans.CarBean;
import com.carlend.beans.LendCarBean;


public class CarDao {

	public static int save(CarBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into mydb.cars values(?,?,?,?,?)");
			ps.setString(1,bean.getCarNo());
			ps.setString(2,bean.getCarName());
			ps.setString(3,bean.getModel());
			ps.setInt(4,bean.getNoOfCars());
			ps.setInt(5,0);
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static List<CarBean> view(){
		List<CarBean> list=new ArrayList<CarBean>();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from mydb.cars");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				CarBean bean=new CarBean();
				bean.setCarNo(rs.getString("carNo"));
				bean.setCarName(rs.getString("carName"));
				bean.setModel(rs.getString("carModel"));
				bean.setNoOfCars(rs.getInt("noOfCars"));
				bean.setLentCars(rs.getInt("lentCars"));
				
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}
	public static int delete(String carNo){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("delete from mydb.cars where carNo=?");
			ps.setString(1,carNo);
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static int getlent(String carNo){
		int lentCars=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from mydb.cars where carNo=?");
			ps.setString(1,carNo);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				lentCars=rs.getInt("lentCars");
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return lentCars;
	}
	public static boolean checkIssue(String carNo){
		boolean status=false;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from mydb.cars where carNo=? and noOfCars>lentCars");
			ps.setString(1,carNo);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				status=true;
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static int lendCar(LendCarBean bean){
		String carNo=bean.getCarNo();
		boolean checkstatus=checkIssue(carNo);
		System.out.println("Check status: "+checkstatus);
		if(checkstatus){
			int status=0;
			try{
				Connection con=DB.getCon();
				PreparedStatement ps=con.prepareStatement("insert into mydb.lentCar values(?,?,?,?,?,?)");
				ps.setString(1,bean.getCarNo());
				ps.setString(2,bean.getLendeeId());
				ps.setString(3,bean.getLendeeName());
				ps.setLong(4,bean.getMobileNo());
				java.sql.Date currentDate=new java.sql.Date(System.currentTimeMillis());
				ps.setDate(5,currentDate);
				ps.setString(6,"no");
				
				status=ps.executeUpdate();
				if(status>0){
					PreparedStatement ps2=con.prepareStatement("update mydb.cars set lentCar=? where carNo=?");
					ps2.setInt(1,getlent(carNo)+1);
					ps2.setString(2,carNo);
					status=ps2.executeUpdate();
				}
				con.close();
				
			}catch(Exception e){System.out.println(e);}
			
			return status;
		}else{
			return 0;
		}
	}
	public static int returnCar(String carNo,int lendeeId){
		int status=0;
			try{
				Connection con=DB.getCon();
				PreparedStatement ps=con.prepareStatement("update mydb.lentCar set returnstatus='yes' where carNo=? and lendeeId=?");
				ps.setString(1,carNo);
				ps.setInt(2,lendeeId);
				
				status=ps.executeUpdate();
				if(status>0){
					PreparedStatement ps2=con.prepareStatement("update mydb.cars set lentCar=? where carNo=?");
					ps2.setInt(1,getlent(carNo)-1);
					ps2.setString(2,carNo);
					status=ps2.executeUpdate();
				}
				con.close();
				
			}catch(Exception e){System.out.println(e);}
			
			return status;
	}
	public static List<LendCarBean> viewlentcars(){
		List<LendCarBean> list=new ArrayList<LendCarBean>();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from mydb.lentcar order by LendDate desc");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				LendCarBean bean=new LendCarBean();
				bean.setCarNo(rs.getString("carNo"));
				bean.setLendeeId(rs.getString("lendeeId"));
				bean.setLendeeName(rs.getString("lendeeName"));
				bean.setMobileNo(rs.getLong("mobileNo"));
				bean.setLendDate(rs.getDate("LendDate"));
				bean.setReturnStatus(rs.getString("returnstatus"));
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}

}
