<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="postManager" class="com.yourpackage.PostManager" scope="session"/>

<%
    String postContent = request.getParameter("postContent");
    postManager.createPost(postContent); // You'll need to implement this method.
    List<Post> posts = postManager.getAllPosts(); // You'll need to implement this method.
    request.setAttribute("posts", posts);
%>
<jsp:forward page="index.jsp"/>
