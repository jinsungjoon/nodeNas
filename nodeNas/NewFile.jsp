<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.util.Date"%> 

<% Date t = new Date(); 
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	세션 ID :
	<%= session.getId() %><br>
	<% t.setTime(session.getCreationTime()); %>
	세션 생성시간 :
	<%= sf.format(t) %><br>
	<% t.setTime(session.getLastAccessedTime()); %>
	최근 접근시간 :
	<%= sf.format(t) %>
	<% session.setAttribute("id", "jsj"); %>
	<a href="NewFile2.jsp">1234</a>
</body>
</html>