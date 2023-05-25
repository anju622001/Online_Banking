
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">

</head>

<body>
<%@page import="d.dao,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <jsp:useBean id="u" class="g.bean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<div id="top_links">
  

<div id="header">
	<h1 style="color:black">SBI - BANK</h1>
    <h2>Online Banking Service</h2>	
      <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>

<div id="navigation">
    <ul>
    <li><a href="create.jsp">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services1"><center><h1>Services</h1></center><br>
		     <ul>
        	<li><a href="#">https://www.paisabazaar.com/sbi-bank/</a></li>
            <li><a href="#">https://www.ndtv.com/business/state-bank-of-india-sbi-latest-interest-rates-top-10-services-national-pension-system-nps-net-bankin-1948905 </a></li>
            <li><a href="#">www.javatpoint.com/forum.jsp</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
     <div class="a2" style="border-right:#666666 1px dotted;" ><center><h1>WITHDRAW DETAILS</h1></center>
			<br>
    
    	
    	<% 
%>
<table><%
        String num=request.getParameter("accountno");
		int accountno=Integer.parseInt(num);
        String username=request.getParameter("username");
		String password=request.getParameter("password");
		String amoun=request.getParameter("amount");
		int accoun=Integer.parseInt(amoun);
	    boolean status=dao.checkLogin(accountno,username,password);
		
	    
		try {
		if(status==true){
			out.print("Welcome    " + username);
		
			Connection con=dao.getConnection();
			PreparedStatement ps=con.prepareStatement("Select * from newaccount where accountno=?");
			
            ps.setInt(1,accountno);
			ResultSet rs=ps.executeQuery();
			int dataamount=0;
			
			if(rs.next()){
			dataamount=rs.getInt(5)-accoun; 
			
			}
			Connection con1=dao.getConnection();
			
			PreparedStatement ps1=con1.prepareStatement("update newaccount set amount=? where accountno=?");
			ps1.setInt(1,dataamount);
			ps1.setInt(2,accountno);
			ps1.executeUpdate();
			
			%>
			 <table border="1" width="100%">  
		    	<tr><th>Account No</th><th>User Name</th><th>Amount</th><th>Withdraw Amount</th></tr>  
		    	<tr><td><%out.print(accountno); %></td><td><%out.print(username); %></td>
		    	 <td><% out.print(dataamount); %></td> <td><% out.print(accoun); %></td></tr>
		    	   	 
		    	 <%					
		}
		else{
			out.print("Please check your username and Password");
			%>
			<jsp:forward page="withdraw1.jsp"></jsp:forward> 
			<% 
			}
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		
	
			%>
		</td>
		</table>
		</table>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="g.*" %>

<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	  
  Copyright © State Bank of India (APM Id: Serv_Tran_552)</div>
</div>	
   
