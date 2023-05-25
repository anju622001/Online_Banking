<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%! 
%>
<%@page import="d.dao"%>
<jsp:useBean id="formHandler" class="g.bean" scope="request">
<jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>

<% 

if (formHandler.validate()) {
	
	 int i = dao.register(formHandler);
	//System.out.println(i);
	if (i > 0) {
		System.out.println(i);
%>
<jsp:forward page="balance.jsp"/>
<%
}
else {
	System.out.println("el");
%>
<jsp:forward page="balance1.jsp"/>
<%
}
%>
<%
}
else {
	System.out.println("else");
%>
<jsp:forward page="balance1.jsp"/>
<%
}
%>