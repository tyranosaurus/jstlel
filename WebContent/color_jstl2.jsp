<!-- 태그지시자 입력, 이걸해야 JSTL 사용 가능 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- 이걸 선언해줘야 JSTL 중 core를 사용가능 prefix는 name에 해당 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <!-- JSTL 중 fomat 를 사용가능 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  <!-- JSTL 중 function 를 사용가능 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- if~ else if~ else문과 같은 기능  = c:choose -->
		
		<c:choose>
		
			<c:when test="${param.color == 1 }">
				<span style="color: red">빨강</span>
			</c:when>
			
			<c:when test="${param.color == 2 }">
				<span style="color: green">녹색</span>
			</c:when>
			
			<c:when test="${param.color == 3 }">
				<span style="color: blue">파랑</span>
			</c:when>
			
			<c:otherwise> <!-- if~esle if~ else에서  마지막 else 역할 , 위의 조건들을 모두 만족하지 않으면 otherwise 문을 실행한다.-->
				<span style="color: black">검정</span>
			</c:otherwise>
			
		</c:choose>
	
	
	

</body>
</html>