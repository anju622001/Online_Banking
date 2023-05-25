<jsp:useBean id="formHandler" class="g.bean" scope="request"/>
<html>
<head>
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">

</head>
<body>
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
	<td width="900" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services1"><center><h1>Services</h1></center><br>
		     <ul>
        	<li><a href="#">https://www.paisabazaar.com/sbi-bank/</a></li>
            <li><a href="#">https://www.ndtv.com/business/state-bank-of-india-sbi-latest-interest-rates-top-10-services-national-pension-system-nps-net-bankin-1948905 </a></li>
            <li><a href="#">www.javatpoint.com/forum.jsp</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	<div class="a1" style="border-right:#666666 1px dotted;"><center><h1 style="font-size:30px;">OPEN ACCOUNT FORM</h1></center><br>
    	    <table  align="center" bgcolor="white">
		<tr>
			
		</tr>
		<tr>
			<td>
				<form  action="required.jsp" method =post >
				  <table cellspacing="1" cellpadding="1">	
				  <tr><td>ACC NO:</td><td> <input type="number" name="accountno" value="<%=formHandler.getAccountno()%>"/></td></tr>
				 <tr> <td><font style="color:red" > <%=formHandler.getErrorMsg("accountno")%></font></td>	</tr>
					<tr><td>USER NAME:</td><td> <input type="text" name="username" value="<%=formHandler.getUsername()%>" oninput="value = value.replace(/[^A-Za-z]/, '')"  maxlength=20/></td></tr>
					<td><font style="color:red" > <%=formHandler.getErrorMsg("username")%></font></td>	
					<tr><td>PASSWORD:</td><td> <input type="password" name="password" value="<%=formHandler.getPassword()%>" /></td></tr>
					<tr><td><font style="color:red" > <%=formHandler.getErrorMsg("password")%></font></td>	</tr>
					<tr><td>RE-PASSWORD:</td><td> <input type="password" name="repassword" value="<%=formHandler.getRepassword()%>" /></td></tr>
					<td><font style="color:red"  > <%=formHandler.getErrorMsg("repassword")%></font></td>	
					<tr><td>AMOUNT:</td><td> <input type="number" name="amount" value="<%=formHandler.getAmount()%>" /></td></tr>
					<td><font style="color:red" > <%=formHandler.getErrorMsg("amount")%></font></td>	
					
					<tr><td>ADDRESS:</td><td> <input type="text" name="address" value="<%=formHandler.getAddress()%>" /></td></tr>
					<td><font style="color:red" > <%=formHandler.getErrorMsg("adderess")%></font></td>	
					<tr><td>PHONE:</td><td> <input type="number" name="phone" value="<%=formHandler.getPhone()%>" maxlength=10/></td></tr>
					<td><font style="color:red"  > <%=formHandler.getErrorMsg("phone")%></font></td>	
					<tr><td></td><td><input type="submit" value="SUBMIT"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
               		</form>
			</td>
		</tr>
	
	</table>
    	   </div>      
    </td>
    
   <td width="900" valign="top">
    	<div id="welcome1" style="border-right:#666666 1px dotted;"><center><h1>Welcome</h1></center><br>
    	    <center><img src="images/globe_10.gif" alt="business" width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	    	
	    </div>      
    </td>
             	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
   
  <div id="footer_copyright" >
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of <br>
		    webdesign starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	  
  Copyright © State Bank of India (APM Id: Serv_Tran_552)</div>
</div>
</div>
</body>
</html>
