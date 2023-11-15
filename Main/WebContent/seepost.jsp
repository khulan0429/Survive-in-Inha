<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
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
    <div class="post-container">
        <div class="post-author">
            <span class="author-name">khulan@0429's 님의 길</span>
            <span class="post-time">15분 전</span> <!-- Placeholder; replace with actual data -->
        </div>
        
        <div class="post-title">
            <h2>오늘 같이 DB과제 하실 분 구합니다^^</h2>
        </div>
        
        <div class="post-content">
            <p>
                오늘 같이 DB과제 하실 분 구합니다^^​
                오늘 5시에 7호관 start-up실에서 합니다.공부하고 같이 밥도 먹고 놀자!!!!
            </p>
        </div>

        <div class="post-controls">
              <button onclick="window.location.href='editpost.jsp'">Edit Post</button>
        </div>

        <div class="comment-section">
            <div class="comment">
                <span class="comment-author">사용자 ID님의 댓길:</span>
                <span class="comment-time">10분 전</span> <!-- Placeholder; replace with actual data -->
                <p>저도요!! 어디서 공부항까요?</p>
                <button>Edit Comment</button>
            </div>
            <!-- More comments can be listed in a similar fashion -->
        </div>

        <div class="leave-comment-section">
            <button onclick="showCommentForm()">댓글 남기기</button>
            <form id="commentForm" style="display:none;">
                <textarea placeholder="댓글을 입력하세요..."></textarea>
                <button type="submit">제출</button>
            </form>
        </div>
    </div>
</main>
<footer>
    <p>&copy; 2023 Survive in INHATC by 202288002 홀랑. All rights reserved.</p>
</footer>

<script>
    function showCommentForm() {
        document.getElementById('commentForm').style.display = 'block';
    }
</script>
</body>
</html>
