


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1 style="color:black">SBI  - BANK</h1>
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
    	<div class="a1" style="border-right:#666666 1px dotted;"><h1 style="font-size:30px; align:center;">CLOSE ACCOUNT FORM</h1><br>
    	    <table  align="center" bgcolor="white">
		<tr>
				
		</tr>
		<tr>
			<td>
			<div><%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %></div>
				<form  action="closeac.jsp" >
				     <table cellspacing="5" cellpadding="3">
				    <tr><td>ACCOUNT NO:</td><td> <input type="text" name="accountno" required/></td></tr>
					<tr><td>USER NAME:</td><td> <input type="text" name="username" required/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password" required/></td></tr>
					
					<tr><td></td><td><input type="submit" value="SUBMIT"/>
					
                   
                    <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
                   	</table>
				</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
     <td width="299" valign="top">
    	<div id="welcome1" style="border-right:#666666 1px dotted;"><h1><center>Welcome</h1></center><br>
    	    <center><img src="images/globe_10.gif" alt="business" width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	    	
	    </div>      
    </td>
   
            	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	  
  Copyright © State Bank of India (APM Id: Serv_Tran_552)</div>
</div>


</div>

</body>
</html>
