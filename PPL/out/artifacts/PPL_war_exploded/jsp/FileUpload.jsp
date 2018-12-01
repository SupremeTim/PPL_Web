<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-29
  Time: 오후 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String realFolder="";

    String saveFolder="upload";
    String encType="utf-8";
    int maxSize = 5*1024*1024; //5MByte

    ServletContext context = this.getServeltContext();
    realFolder = context.getRealPath(saveFolder);

    System.out.println("실제 서블릿 상 경로 : " + realFolder);
    out.print("실제 서블릿 상 업로드 경로 : " + realFolder);

    // 파일을 받아와서 폴더에 업로드
    MultipartRequest multi = null;

    try{
        multi = new MultipartRequest(
                request,
                realFolder,
                maxSize,
                encType,
                new DefaultFileRenamePolicy()
        );

        Enumeration en = multi.getParameterNames();
        while(en.hasMoreElements()){
            String name = (String)en.nextElement();
            String value = multi.getParameter(name);
            out.print("<br>"+name+":"+value);
        }
    }catch(Exception e){
        System.out.println("파일 처리 간 문제 발생");
    }

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FileUpload</title>
</head>
<body>

</body>
</html>
