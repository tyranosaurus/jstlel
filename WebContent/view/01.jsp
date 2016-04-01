<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%
	String name = "최영진";
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터 형</h3>
	-- ${name} -- <br/>  <!-- --이것만 출력된다. 즉, 기존의 자바코드가 동작하는 방식으로는 동작하지 않는다. 서블릿에  리퀘스트 셋 어트리뷰트로 담은 정보는 가져올 수 있다. 즉, 자원을 공유하는 객체들에서 값을 뽑아낸다. --> 
	${iValue } <br/>
	${fValue } <br/>
	${bValue } <br/>
	--${nullValue }-- <br/> <!-- 값이  null이면 에러표시를 해주는게 아니라 공백을 출력한다.   -->
</body>
</html>