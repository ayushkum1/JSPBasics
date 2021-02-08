<%@page import="day6_Assignmnt.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%!

private String correctName , correctPassword;

//initialising the correctName and correctPassword to match the user
public void jspInit(){
	correctName = "abc";
	correctPassword = "1234";
}

%>

<body>
<%
if(request.getParameter("email").equals(correctName) && request.getParameter("password").equals(correctPassword)){
	session.setAttribute("user_details", new Users(correctName, correctPassword));
	response.sendRedirect("user_details.jsp");
}
else{
%>
<h3>Invalid Login <a href='login.jsp'> Login Again</a></h3>
<%
}
%>
</body>

</html>