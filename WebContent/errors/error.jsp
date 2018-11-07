<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>     <!-- default:false. true해야 exception 메서드 상속가능 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>예외가 발생했어요(/-▽-)/</h1>
<% //예외정보를 가져오기
     out.println("exception: "+exception+"<p>");
     out.println("exception.getMessage(): "+exception.getMessage()+"<p>");
     out.println("exception.getClass(): "+exception.getClass()+"<p>");
%>
</body>
</html>