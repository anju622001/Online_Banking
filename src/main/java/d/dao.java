package d;
import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import g.bean;
//import com.javatpoint.bean.User;
public class dao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test_db?characterEncoding=latin1", "root",
					"password");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public  static int register(bean formHandler ){
		int status = 0;
		try {
		Connection con=getConnection();
		PreparedStatement ps = con.prepareStatement("insert into newaccount(accountno,username,password,repassword,amount,address,phone)values(?,?,?,?,?,?,?)");
			int an = Integer.parseInt(formHandler.getAccountno());
			ps.setInt(1,an);
			//ps.setString(1,formHandler.getAccountno());
			ps.setString(2,formHandler.getUsername());
			ps.setString(3,formHandler.getPassword());
			ps.setString(4,formHandler.getRepassword());
			int am = Integer.parseInt(formHandler.getAmount());
			ps.setInt(5,am);
			
			ps.setString(6,formHandler.getAddress());
			ps.setString(7,formHandler.getPhone());
			status=ps.executeUpdate();
			System.out.println(status);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	
	public static boolean CheckUsernameExists(String accountno)
	{
	    boolean usernameExists = false;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * from  newaccount WHERE accountno = ?");
			ps.setString(1, accountno);
			
			ResultSet rs = ps.executeQuery(); 
			String usernameCounter;
			if(rs.next()) {
				 usernameCounter =  rs.getString("accountno");
				// System.out.println(usernameCounter);
				 if(usernameCounter.equalsIgnoreCase(accountno))
		           {
		              usernameExists = true;
		              }				 						
		}
		}catch (SQLException e) {
		System.out.println(e);	
		
		}
		return usernameExists;				
	}
	

public static boolean checkLogin(int accountno,String username,String password){
	boolean status=false;
	Connection con=getConnection();
	try {		
		PreparedStatement ps=con.prepareStatement("Select * from newaccount where accountno=? and username = ? and password =?");
		
		ps.setInt(1,accountno);
		ps.setString(2,username);
		ps.setString(3,password);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
public static   List<bean> getAllRecords(int accountno) {
	List<bean> list = new ArrayList<bean>();

	try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("select  * from newaccount where accountno=?");
		ps.setInt(1, accountno);
		ResultSet rs = ps.executeQuery();
		int dataamount=0;
		//int tcount =0;
		while (rs.next()) {
			
			bean formHandler = new bean();
			formHandler.setAccountno(rs.getString("accountno"));
			formHandler.setUsername(rs.getString("username"));
			formHandler.setPassword(rs.getString("password"));
			formHandler.setRepassword(rs.getString("repassword"));
			formHandler.setAmount((rs.getString("amount")));
			formHandler.setAddress(rs.getString("address"));		
			formHandler.setPhone(rs.getString("phone"));
			list.add(formHandler);
		}
		
	} catch (Exception e) {
		System.out.println(e);
	}
	return list;
}
public static bean getRecordById(int accountno) {
	bean formHandler = null;
	try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("select * from newaccount where accountno=?");
		ps.setInt(1, accountno);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			formHandler = new bean();
			
			formHandler.setAccountno(rs.getString("accountno"));
			formHandler.setUsername(rs.getString("username"));
			formHandler.setPassword(rs.getString("password"));
			formHandler.setRepassword(rs.getString("repassword"));
			int am = Integer.parseInt(formHandler.getAmount());
			ps.setInt(5,am);
			//formHandler.setAmount(rs.getString("amount"));
			formHandler.setAddress(rs.getString("address"));		
			formHandler.setPhone(rs.getString("phone"));
		}
	} catch (Exception e) {
		System.out.println(e);
	}
	return formHandler;
}

public static int deposit(bean formHandler){
	int status = 0;
	//bean formHandler = null;
	try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("select * from newaccount where accountno=?");
		int an = Integer.parseInt(formHandler.getAccountno());
		ps.setInt(1,an);
		ResultSet rs = ps.executeQuery();
		int dataamount=0;
		while (rs.next()) {
			//formHandler = new bean();
			
			formHandler.setAccountno(rs.getString("accountno"));
			formHandler.setAmount(rs.getString("amount"));
			dataamount=Integer.parseInt(rs.getString("amount1"))+rs.getInt(5);
			System.out.println("dataamount"+dataamount);
		}

		
	PreparedStatement ps1=con.prepareStatement("update newaccount set amount=? where accountno=?");
	ps1.setInt(1,dataamount);
	
	status = ps1.executeUpdate();
	
	} catch (Exception e) {
		System.out.println(e);
		
	}
	return status;	
}


public static int update(bean formHandler) {
	int status = 0;
	int dataamount = 0;
	//dataamount = request.getParameter("amount1");
	
	try {
		
		
		Connection con = getConnection();
		PreparedStatement ps = con
				.prepareStatement("update newaccount set amount =? where accountno=?");
		int amountt = Integer.parseInt(formHandler.getAmount());
		System.out.println(amountt);
		int da1 = amountt+dataamount;
		ps.setInt(1,da1);
		int an = Integer.parseInt(formHandler.getAccountno());
		ps.setInt(2,an);
		status = ps.executeUpdate();
	}
	 catch (Exception e) {
		System.out.println(e);
	}
	return status;
}

public static int delete(bean formHandler) {
	int status = 0;
	try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("delete from newaccount where accountno=?");
		int an = Integer.parseInt(formHandler.getAccountno());
		ps.setInt(1,an);
		status = ps.executeUpdate();
	} catch (Exception e) {
		System.out.println(e);
	}

	return status;
}

}