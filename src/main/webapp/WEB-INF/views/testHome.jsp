<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪Quiz</title>
<link rel="stylesheet" href="resources/css/test.css">
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".yTr").dblclick(function() {
			//alert();
			//alert($(this).children().html());
			var dcno = $(this).children().html();
			$(location).attr("href", "gogo.not?dataNo=" + dcno);
		});
	});
</script>
</head>
<body>
	<br>
	<div class="yMain">
		<div class="yTitle">은행문제?</div>
		<form method="post">
			<div class="yTr">
				번호<input type="text" name="no_NOmean" value="${testCtrlModelAttribute.dataNo }" />
				A<input type="text" name="quiz_NOmean" value="${testCtrlModelAttribute.dataA }" />
				<input type="submit" value="???" />
			</div>
		</form>
		<div class="yTr">
			<div class="yTd yW20">No</div>
			<div class="yTd yW80">Quiz</div>
		</div>
		<c:forEach var="acListJspOnly" items="${acHomeJSP }">
			<div class="yTr">
				<div class="yTd yW20">${acListJspOnly.dataNo}</div>
				<div class="yTd yW20">${acListJspOnly.dataA}</div>
				<div class="yTd yW20">${acListJspOnly.dataB}</div>
				<div class="yTd yW20">${acListJspOnly.dataDate}</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>