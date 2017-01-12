<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Context ctx = new InitialContext();
	DataSource ds = 
		(DataSource)ctx.lookup("java:comp/env/jdbc/TestDB");
	Connection con = ds.getConnection();
	out.println(con);
}
catch(Exception err){
	err.printStackTrace();
}
%>
</body>
</html>