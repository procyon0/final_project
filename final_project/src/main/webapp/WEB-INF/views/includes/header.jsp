<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

<style>
* {margin: 0; padding: 0}
body{font-family: sans-serif;}
li{list-style: none;}
a{text-decoration: none;}
img{border: 0;}

#logo_header{
    width: 960px;
    margin: 0 auto;
    height: 160px;
    position: relative;
}
#logo_header>#logo{
    position: absolute;
    left: -100px; top: 20px;
}
#logo{
    font-family:'Black Han Sans', sans-serif;
    color : black;
    font-size:20pt;
}
#logo>h1>a{
    text-decoration: none; color:black;
}

#menu{
    position: absolute;
    top: 40px;
    left:180px;
    font-family: 'Nanum Gothic', sans-serif;

}
#menu>ul{
    overflow:hidden;
   
}
#menu>ul ul{
    display: none;
    padding:5px;   
}
#menu>ul>li>ul>li{
    padding: 10px;
}
#menu>ul>li{
    float:left;
    text-align: center;
}
#menu>ul>li:hover{
 /*  box-shadow:inset 0 -10px 0 rgba(238, 65, 2, 0.26); */ /* 형광펜처럼 밑에만 근데 생각만큼 안이쁨.. */
    border-bottom:solid 2px coral;
    margin : 10px 0;
}
#menu>ul>li a:hover{
    display:block;     
}
#menu>ul>li>a{
    display:block;
    margin: 0 20px;
    padding: 2px 10px;
    color:rgb(32, 31, 31);
    font-weight: bold;
    font-family: 'Gothic A1', sans-serif;
    font-size: 18pt;
}

#login{
    position: absolute;
    right: -100px; top: 40px;
    font-size: 10pt;

}
#login>ul{
    overflow:hidden;
}
#login>ul>li{
    float:left;
    left: 0; 
}
#login>ul>li>a{
    display:block;
    margin: 0 5px;
    padding: 2px 10px;
    color :black;
}

</style>
   <script
        src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">
   </script>
</head>
<body>
    <header id="logo_header">
        <div id="logo">
            <h1><a href="/recipe/search">레시피슈퍼</a></h1>
        </div>
        <nav id="menu">
            <ul>
                <li><a href="/recipe/search">레시피검색</a></li>
                <li><a href="/video/channels">요리비책</a>
                <li><a href="/goods/list">슈퍼</a></li>
                <li><a href="/board/list">공지사항</a></li>
            </ul>
        </nav>
        <nav id="login">
            <ul>
                <li><a href="/secu/login">로그인 </a></li>
                <li><a href="/member/register"> 회원가입</a></li>
            </ul>
        </nav>
    </header>
</body>
</html>