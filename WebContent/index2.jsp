<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="login.jsp">login</a>|  
<a href="logout.jsp">logout</a>|  
<a href="profile.jsp">profile</a>  
<br>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		아이디 : <input type="text" name="id"><br> 
		제목 : <input type="text" name="subject"><br> 
		파일첨부 : <input type="file" name="fileName1"><br> 
		<input type="submit" value="upload">
	</form>
</body>
</html>