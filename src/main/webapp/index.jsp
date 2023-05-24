<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
	
	<style type="text/css">
   .main{
      width: 500px;
      height: 400px;
      position: fixed;      
   }
   .content{
      padding: 30px;
      text-align: center;
      font-size: 16px;
      line-height: 30px;
   }
   
   .btn{
      height:25px;
      width: 120px;
      cursor: pointer;
      display: block;
      text-align: center;
      font-size: 16px;
      font-weight: bold;
      border-radius: 3px;
      background: #f00;
      color: #fff;
      position: absolute;
      text-decoration: none;
      right: 50px;
      bottom: 280px;
   }
   
   .list{
    	right: 200px;
      	bottom: 280px;
   }
   
   .register{
      right: 50px;
      bottom: 280px;
   }
   
</style>
</style>
</head>
<body>

	<!-- 
	<form action="/board/register" method="post">
		제목: <input type="text" name="title" /> <br>
		내용: <input type="text" name="content" /><br>
		작성자: <input type="text" name="writer" /> <br>
		
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	
	</form>
	 -->
	 
	<div class="main">
      <div class="content">Welcome! 제가 처음으로 만든 풀스택 웹 페이지입니다! </div>
      <a href="/board/list" class="btn list"> 글 목록 조회</a>
      <a href="/board/register" class="btn">글 등록하기 </a>
   </div>
</body>
</html>