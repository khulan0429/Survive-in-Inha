<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.yourpackage.Post" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Post</title>
</head>
<body>
    <h1>View Post</h1>
    
    <c:if test="${post != null}">
        <p>${post.content}</p>
        <!-- Add comment section here -->
    </c:if>
</body>
</html>
