package com.demo;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.demo.Vehicle;
import java.util.Date;
import java.text.SimpleDateFormat;

public class ManageDao extends BaseDao {

	public boolean addCustomer(String user, String pass) {
		String username = user;
		String password = pass;

		String sql = "INSERT INTO Administrator"
				+ "(userName,passWord)VALUES(?,?)";
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, username);
			pstmt.setString(2, password);

			pstmt.executeUpdate();
			return true;

		} catch (SQLException se) {
			se.printStackTrace();
			return false;
		}
	}

	public boolean addCar(String a, String b, String c) {

		String sql = "INSERT INTO Vehicle"
				+ "(type,plateNumber,enterTime)VALUES(?,?,?)";
		if(this.findAllVehicle().size()>99)
			return false;//判断是否有车位；
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, a);
			pstmt.setString(2, b);
			pstmt.setString(3, c);
			pstmt.executeUpdate();
			return true;

		} catch (SQLException se) {
			se.printStackTrace();
			return false;
		}

	}

	public ArrayList<Vehicle> find(String cname, String a, String b, String c) {
		ArrayList<Vehicle> custList = new ArrayList<Vehicle>();
		String sql = "SELECT * " + " FROM Vehicle WHERE plateNumber like '%"
				+ a + "%'" + "and type like '%" + cname + "%'"
				+ "and enterTime between '" + b + "'and'"+c+"'";
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			try (ResultSet rst = pstmt.executeQuery()) {
				while (rst.next()) {
					Vehicle customer = new Vehicle();
					customer.setPlateNumber(rst.getString("plateNumber"));
					customer.setType(rst.getString("type"));
					customer.setEnterTime(rst.getDate("enterTime").toString()
							+ " " + rst.getTime("enterTime").toString());
					if (rst.getDate("leaveTime") != null) {
						customer.setLeaveTime((rst.getDate("leaveTime")
								.toString() + " " + rst.getTime("leaveTime")
								.toString()));
						customer.setParkingTime(rst.getInt("parkingTime"));
						customer.setCharge(rst.getInt("charge"));
					}
					custList.add(customer);
				}
			}
		} catch (SQLException se) {
			
		}
		return custList;
	}

	// 查询所有客户信息
	public ArrayList<Vehicle> findAllVehicle() {

		ArrayList<Vehicle> custList = new ArrayList<Vehicle>();
		String sql = "SELECT * FROM Vehicle";
		Statement stmt = null;
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String str_date1 = formatter.format(new Date()); // 将日期时间格式化
		int nowTime = Integer.parseInt(str_date1.substring(11, 13));
		try {
			Connection conn = dataSource.getConnection();
			stmt = conn.createStatement();// 建立处理的SQL语句
			ResultSet rst = stmt.executeQuery(sql);// 形成结果集{
			while (rst.next()) {
				Vehicle customer = new Vehicle();
				customer.setPlateNumber(rst.getString("plateNumber"));
				customer.setType(rst.getString("type"));
				customer.setEnterTime((rst.getDate("enterTime").toString()
						+ " " + rst.getTime("enterTime").toString()));
				int temp = Integer.parseInt(customer.getEnterTime().substring(
						11, 13));
				if (rst.getDate("leaveTime") != null) {
					customer.setLeaveTime((rst.getDate("leaveTime").toString()
							+ " " + rst.getTime("leaveTime").toString()));
					customer.setParkingTime(rst.getInt("parkingTime"));
					customer.setCharge(rst.getInt("charge"));
				} else
					customer.setCharge(Math.abs(temp - nowTime) * 2);
				custList.add(customer);

			}
			return custList;
		} catch (SQLException e) {
			e.printStackTrace();

			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean loginDo(String user, String pass) {
		String sql = "SELECT * FROM Administrator";
		Statement stmt = null;
		boolean logo = false;
		try {
			Connection conn = dataSource.getConnection();
			stmt = conn.createStatement();// 建立处理的SQL语句
			ResultSet rst = stmt.executeQuery(sql);// 形成结果集{
			while (rst.next()) {
				if (user.equals(rst.getString("userName").trim())
						&& pass.equals(rst.getString("passWord").trim())) {
					logo = true;

				}
			}
		} catch (SQLException e) {
			e.printStackTrace();

			logo = false;
		} catch (Exception e) {
			e.printStackTrace();

			logo = false;
		}
		return logo;
	}
}
