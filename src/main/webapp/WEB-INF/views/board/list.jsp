<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>����Ʈ ������</h1>
<a href="write.board">�۾���</a><br><br>
<table border="1">
	<tr>
		<th>��ȣ</th><th>����</th><th>�����</th><th>�����</th>
		<th>��ȸ��</th>
	</tr>
<c:forEach var="row" items="${board}">
	<tr>
		<td>${row.seq}</td>
		<td><a href="read.board?seq=${row.seq}">${row.title}</a></td>
		<td>${row.writer}</td>
		<td>${row.regdate}</td>
		<td>${row.hitcount}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>










