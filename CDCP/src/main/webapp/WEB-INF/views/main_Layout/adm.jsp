<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어드민페이지양식2</title>
<style type="text/css">

   * {
        box-sizing: border-box;
    }

    body {
        font-family: sans-serif;
        padding: 10px;
        background: #f1f1f1;
    }

    .header {
    
        padding: 30px;
        text-align: center;
        background: white;
    }

    .header h1 {
        font-size: 50px;
    }

    nav ul {
                width: 100%;
                background-color: #0047AB;
                list-style-type: none;
                margin: 0;
                padding: 0;
            }
            nav ul li {
                display: inline-block;
            }
            
            .home {
                background-color: darkorange;
                width: 100px;
                text-align: center;
                font-weight: bold;
                float: right;
            }

            .home a {
                display: block;
                text-decoration: none;
                color: white;
                padding: 16px 16px;
            }

            .dropdown {
                position: relative;
            }

            .dropdown-menu {
                /*background-color: darkorange; */
                color: white;
                padding: 16px;
                font-size: 16px;
                cursor: pointer;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1}

            .dropdown-menu:hover:not(.home){
                background-color: darkorange;
                color: white;
            }



.rayout{
	
    width: 100%;
    height: 100%;
    margin: 0 auto;
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 20%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1400px;
}

#main { /* 가운데 메인 내용 틀 */
	width: 60%;
	height: 100%;
	float:left;
	background: white;
	min-height: 1400px;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 20%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1400px;
}

#content {
	width: 80%;
	height: 20%;
	min-height: 300px;
	margin: 30px auto;
	background-color: #eee;
	padding: 30px 40px 40px;
}

#content_content {
	width: 80%;
	height: 40%;
	min-height: 600px;
	margin: 30px auto;
	background-color: #eee;
	padding: 30px 40px 40px;
}

#s_left_menu {
	width: 80%;
	height: 20%;
	min-height: 300px;
	margin: 30px auto;
	background-color: white;
	padding: 30px 40px 40px;
}

#s_left_menu2 {
	width: 80%;
	height: 40%;
	min-height: 600px;
	margin: 30px auto;
	background-color: white;
	padding: 30px 40px 40px;
}
</style>

</head>
<body>

<div class="header">
  <h1>관리자페이지</h1>
  <p>관리자페이지</p>
</div>

<nav>
        <ul>
            <li class="dropdown">
                <div class="dropdown-menu">카드</div>
                <div class="dropdown-content">
                    <a href="#">카드등록/삭제</a>
                    <a href="#">카드혜택관리</a>
                    <a href="#">등록카드사관리</a>
                    <a href="#">대상업체관리</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">리뷰</div>
                <div class="dropdown-content">
                    <a href="#">리뷰관리</a>
                    <a href="#">리뷰신고관리</a>
                    <a href="#">리뷰별점관리</a>
                    <a href="#">Menu2-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">회원관리</div>
                <div class="dropdown-content">
                    <a href="#">회원정보수정</a>
                    <a href="#">회원가입목록</a>
                    <a href="#">회원보유카드</a>
                    <a href="#">Menu3-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">컨텐츠관리</div>
                <div class="dropdown-content">
                    <a href="#">소비심리테스트</a>
                    <a href="#">영상관리</a>
                    <a href="#">등록기사관리</a>
                    <a href="#">카드랭킹관리(?)</a>
                </div>
            </li>
            <li class="home"><a href="#">Home</a></li>
        </ul>
    </nav>

<div class="rayout">
	<div id="s_left">
		<div id="s_left_menu">CardCaptian !!
			<div>KOREA</div>
		</div>
		<div id="s_left_menu2">test</div>
	</div>
		<div id="main">
			<div id="content">가나다라마바사</div>
			<div id="content_content">ABCD</div>
			<div id="content_content">갑을병정</div>
		</div>
	<div id="s_right"></div>
</div>

</body>
</html>