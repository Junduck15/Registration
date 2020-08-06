  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<%
String id = "";
String subject = "";
String fileName1 = "";
String orgfileName1 = "";
MultipartRequest multi = null;
long fileSize =0;
String fileType ="";
String uploadPath = request.getRealPath("/uploadfile"); 
out.println("절대경로 : " + uploadPath +"<br/>");
try {
     multi = new MultipartRequest( 
			request, 
			uploadPath,
			1024 * 1024 * 10, 
			"utf-8", 
			new DefaultFileRenamePolicy() 
	);
	subject = multi.getParameter("subject");
	id = multi.getParameter("id"); 
    Enumeration files = multi.getFileNames();
	   while(files.hasMoreElements()){
           
            String file1 = (String)files.nextElement();
            orgfileName1 = multi.getOriginalFileName(file1);
            fileName1 = multi.getFilesystemName(file1);
            fileType = multi.getContentType(file1);
            File file = multi.getFile(file1);
            fileSize = file.length();
        }
} catch (Exception e) {
	e.getStackTrace();
} 
%>

<html>
<body>
	<form action="check.jsp" method="post">
		<input type="hidden" name="id" value="<%=id%>"> 
		<input type="hidden" name="subject" value="<%=subject%>"> 
		<input type="hidden" name="fileName1" value="<%=fileName1%>"> 
		<input type="hidden" name="orgfileName1" value="<%=orgfileName1%>">
		<input type="submit" value="업로드 확인">
	</form>
</body>
</html>
</body>
</html>