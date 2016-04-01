<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>객체 접근</h3>
	${requestScope.user.no } <br/> <!-- requestScope.를 붙여주면 request범위만 찾는거고 없으면 애플리케이션, 세션, 리퀘스트, 페이지 4군데에서 모두 다 찾는거임, 범위는 이 4군데가 다임. pageScope 	requestScope  sessionScope applicationScope  -->
	${requestScope.user.name } <br/>
	${requestScope.user.email } <br/>

	


</body>
</html>