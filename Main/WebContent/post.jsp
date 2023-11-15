<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Post a New Message</title>
</head>
<body>
    <h1>Post a New Message</h1>
    
    <form action="post_handler.jsp" method="POST">
        <textarea name="postContent" rows="4" cols="50" placeholder="Write a new post"></textarea>
        <input type="submit" value="Post">
    </form>
</body>
</html>
