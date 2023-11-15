<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈 페이지</title>
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
    <div class="search-bar">
        <form action="search.jsp" method="GET">
            <div class="input-group">
                <input type="text" name="query" placeholder="Search">
                <button type="submit"><i class="search-icon"></i>검색</button>
            </div>
        </form>
    </div>

    <div class="Title"> 
       <h1>모든 콘텐즈​</h1>
    </div>
   
    <main>
        <div class="main-content">
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>사용자 아이디</th>
                        <th>제목</th>
                        <th>작성일자</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
    <td>4</td>
    <td>khulan@0429</td>
    <td><a href="seepost.jsp?postID=4">오늘 같이 DB과제 하실 분 구합니다^^</a></td>
    <td>2023.10.04</td>
</tr>

                    <tr>
                        <td>3</td>
                        <td>khulan@0429</td>
                        <td>오늘 같이 DB과제 하실 분 구합니다^^​</td>
                        <td>2023.09.24</td>
                    </tr><tr>
                        <td>2</td>
                        <td>khulan@0429</td>
                        <td>오늘 같이 DB과제 하실 분 구합니다^^​</td>
                        <td>2023.09.22</td>
                    </tr><tr>
                        <td>1</td>
                        <td>khulan@0429</td>
                        <td>오늘 같이 DB과제 하실 분 구합니다^^​</td>
                        <td>2023.09.04</td>
                    
                </tbody>
            </table>
            
            <div class="side-content">
                <div class="post-section">
                    <button onclick="window.location.href='createpost.jsp'">글쓰기​</button>
                </div>

                <div class="live-time-box"> 
                    <span>실시간: </span><div id="live-time-counter"></div>
                </div>
                
            </div>
        </div>

        <div class="pagination">
            <button onclick="previousPage()">&lt;&lt;</button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button onclick="nextPage()">&gt;&gt;</button>
        </div>
    </main>
    
    <footer>
        <p>&copy; 2023 Survive in INHATC by 202288002 홀랑. All rights reserved.</p>
    </footer>

    <script>
        function updateLiveTime() {
            const timeElement = document.getElementById('live-time-counter');
            const now = new Date();
            const timeString = now.toLocaleTimeString();
            timeElement.textContent = timeString;
        }

        setInterval(updateLiveTime, 1000);
        updateLiveTime();
    </script>
</body>
</html>
