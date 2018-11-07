<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Blog Template for Bootstrap</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<%
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	%>
</body>
</html>