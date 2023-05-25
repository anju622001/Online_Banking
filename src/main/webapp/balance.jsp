<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">


</head>

<body>
<%@page import="g.bean,d.dao,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
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
    <li><a href="about.jsp">ABOUT US
    </a></li>
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
    
    <td  width="1200" valign="top">
    <div class="a2" style="border-right:#666666 1px dotted;" ><h1><center>BALANCE DETAILS</h1></center>
			<br>
    
    <%
   
    
    
   // String accountno=request.getParameter("accountno");
    String num=request.getParameter("accountno");
	int accountno=Integer.parseInt(num);
		//int accountno=Integer.parseInt(num);
		 List<bean> list=dao.getAllRecords(accountno);
		// bean formHandler = dao.getRecordById(accountno);
		request.setAttribute("list",list);
        String username=request.getParameter("username");
		String password=request.getParameter("password");
		request.setAttribute("accountno",accountno);
	     request.setAttribute("username",username);  
	     request.setAttribute("password",password); 
	     %>
	   
   
    
	     <%

     
	    boolean status=dao.checkLogin(accountno,username,password);
	     try {
	 		if(status==true){
	 			out.print("Welcome    " + username);
	 			 %>
	 			
	 			<br> <br>
     <table border="1" width="100%">  
    	<tr><th>Account No</th><th>UserName</th><th>Amount</th><th>Address</th><th>Phone</th></tr>  
    	<c:forEach items="${list}" var="formHandler">  
    	<tr><td>${formHandler.getAccountno()}</td><td>${formHandler.getUsername()}</td><td>${formHandler.getAmount()}</td>
    	<td>${formHandler.getAddress()}</td><td>${formHandler.getPhone()}</td></tr></c:forEach>
    	 <%
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("balance","Please check your username and Password");
			%>
			<jsp:forward page="balance1.jsp"></jsp:forward> 
			<% 
			}
		 }catch (Exception e) {
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
		



  
