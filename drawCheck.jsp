<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 확인</title>
</head>
<body>
<%
	String u_id = request.getParameter("userID");
	String sql = "DELETE FROM members WHERE id = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);
	
	int count = sm.executeUpdate();
	
	if(count==1){
		response.sendRedirect("drawSuccess.jsp");
	}else{
		response.sendRedirect("drawERR.jsp");
	}
	sm.close();
	conn.close();
%>
</body>
</html>