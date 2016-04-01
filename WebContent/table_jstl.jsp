<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- 이걸 선언해줘야 JSTL 중 core를 사용가능 prefix는 name에 해당 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <!-- JSTL 중 fomat 를 사용가능 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  <!-- JSTL 중 function 를 사용가능 -->

<c:choose>
	<c:when test="${empty param.r }">
		<c:set var="row" value="3"/>
	</c:when>
	<c:otherwise>
		<c:set var="row" value="${param.r }"/>
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test="${empty param.c }">
		<c:set var="col" value="3"/>
	</c:when>
	<c:otherwise>
		<c:set var="col" value="${param.c }"/>
	</c:otherwise>
</c:choose>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1px' cellspacing='0' cellpadding='10px'>
	
		<c:forEach begin="1" end="${row }" step="1" var="i">
		
			<tr>
			
				<c:forEach begin="1" end="${col }" step="1" var="j">
				
					<td>cell(${i }, ${j })</td>
			
			    </c:forEach>
			
			</tr>
			
		</c:forEach>
		
	</table>
</body>
</html>