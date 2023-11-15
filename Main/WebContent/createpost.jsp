<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>오늘의 길을 쓰기</title>
    <style><%@include file="/WEB-INF/style.css"%></style>
</head>
<body>
<header>
    <div class="top-left"> 
        <span>안녕하세요~ 사용자ID <c:out value="${user.id}" /></span>
    </div> 
    <div class="top-right"> 
        <button onclick="window.location.href='logout.jsp'">로그아옷</button>
    </div>     
</header>

<h2 class="titleofcontent">오늘의 길</h2>

<form action="YourServerSideProcessingScriptHere" method="post" class="post-form">
    <div class="input-group">
        <label for="postTitle" class="search-bar">
            제목:
            <input type="text" id="postTitle" name="postTitle" placeholder="제목을 입력하세요…" required class="search-bar-input">
        </label>
    </div>

    <div class="input-group">
        <label for="postContent" class="search-bar">
            내용:
            <textarea id="postContent" name="postContent" rows="10" placeholder="내용을 입력하세요…" required class="search-bar-input"></textarea>
        </label>
    </div>

    <button onclick="window.location.href='index.jsp'">저장​</button>
</form>

<footer>
    <p>&copy; 2023 Survive in INHATC by 202288002 홀랑. All rights reserved.</p>
</footer>
</body>
</html>
