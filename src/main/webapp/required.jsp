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
	//dao login = new dao();
	
	 int i = dao.register(formHandler);
	//System.out.println(i);
	if (i > 0) {
		System.out.println(i);
%>
<jsp:forward page="index.html"/>
<%
}
else {
	System.out.println("el");
%>
<jsp:forward page="create.jsp"/>
<%
}
%>
<%
}
else {
	System.out.println("else");
%>
<jsp:forward page="create.jsp"/>
<%
}
%>