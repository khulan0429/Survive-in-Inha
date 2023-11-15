<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
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

<main>
    <div class="content-container">
        <form action="HandleEditPost.jsp" method="POST"> <!-- Replace 'HandleEditPost.jsp' with the name of your backend processing file for editing -->
            
            <div class="input-group">
                <label for="title">제목:</label>
                <input type="text" id="title" name="title" value="오늘 같이 DB과제 하실 분 구합니다^^" required>
            </div>
            
            <div class="input-group">
                <label for="post-content">내용:</label>
                <textarea id="post-content" name="content" rows="10" cols="50" required>오늘 같이 DB과제 하실 분 구합니다^^​ 오늘 5시에 7호관 start-up실에서 합니다.공부하고 같이 밥도 먹고 놀자!!!!</textarea>
            </div>
            
            <div class="post-actions">
                <button type="submit">저장</button>
            </div>

        </form>
        <button type="button" onclick="confirmDelete()">삭ㅔ</button> <!-- Separate delete button outside the form -->
    </div>
</main>

<footer>
    <p>&copy; 2023 Survive in INHATC by 202288002 홀랑. All rights reserved.</p>
</footer>

<script>
    function confirmDelete() {
        if (confirm("Are you sure you want to delete this post?")) {
            window.location.href = 'HandleDeletePost.jsp'; // Replace 'HandleDeletePost.jsp' with your delete action endpoint
        }
    }
</script>

</body>
</html>
