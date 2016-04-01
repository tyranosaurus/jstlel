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

	 <c:if test="${param.color == 1 }"> <!-- if태그가 c(core)에 있어서  c:를 붙여줘야 함 , test속성에 넣어준 내용을 평가한다.-->
	 
		<span style="color: red">빨강</span>
		
	</c:if> 
	
	<!-- if태그에는 else가 없다. 대신 다른방법으로 대체 가능 -->
	<c:if test="${param.color == 2 }"> 
	 
		<span style="color: green">녹색</span>
		
	</c:if>
	
	<c:if test="${param.color == 3 }">
	 
		<span style="color: blue">파랑</span>
		
	</c:if>
	
	
	

</body>
</html>