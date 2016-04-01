<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	UserVo userVo0 = new UserVo();
	userVo0.setNo(0L);
	userVo0.setName("둘리0");

	pageContext.setAttribute("user", userVo0);

	String name = "그냥 스트링입니다."; // 자원을 공유하는 객체가 아닌 경우 아래처럼 넣어서 써야함.
	pageContext.setAttribute("name", name); // 변수접근은 이렇게 써야 가능하다.
	
%>
-- ${name } --

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>범위 우선순위</h3>
	<h4>작은 범위부터 찾는다</h4>
	${user.no } <br/>
	${user.name } <br/><br/>

	<!-- 스코프 찾는 순서임. 자원을 공유하기 위한  객체들임.-->
	<h4>pageScope에서 찾을떄</h4>	
	${pageScope.user.no } <br/>
	${pageScope.user.name } <br/><br/>
	
	<h4>requestScope에서 찾을떄</h4>	
	${requestScope.user.no } <br/>
	${requestScope.user.name } <br/><br/>
	
	<h4>sessionScope에서 찾을떄</h4>
	${sessionScope.user.no } <br/>
	${sessionScope.user.name } <br/><br/>
		
	<h4>applicationScope에서 찾을떄</h4>	
	${applicationScope.user.no } <br/>
	${applicationScope.user.name } <br/><br/>
	

	
	

</body>
</html>