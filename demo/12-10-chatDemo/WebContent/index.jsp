<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<c:set var = "t" value="${request.contextPath }"></c:set>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	</head>
	<body>
		<a href="listenList" id="t">click</a>
		
	</body>
</html>

<!-- 

session : 
User my , Uesr other
consultationrecordId
listenRecordId
type 
videoChatAddress
audioChatAddress
listenRecords
consultationRecords
筛选时：
gender
age


application: 
allUnusedListenRecords
allUnusedConsultationRecords
videoAddress2messages
audioAddress2messages


 -->