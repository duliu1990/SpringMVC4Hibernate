<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />

<spring:url value="/resources/js/jquery-1.12.4.min.js" var="jquery" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${jquery}"></script>
<script src="${bootstrapJs}"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Index</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table table-striped">
				<caption>学生信息</caption>
				<thead>
					<tr>
						<th>ID</th>
						<th>姓名</th>
						<th>生日</th>
						<th>性别</th>
						<th>年龄</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="students">
					<c:forEach items="${students}" var="student">
						<tr>
							<th>${student.id}</th>
							<th>${student.sName}</th>
							<th><fmt:formatDate value="${student.sBirth}" pattern="yyyy-MM-dd" /></th>
							<th>${student.sSex}</th>
							<th>${student.sAge}</th>
							<th>
								<a href="/SpringMVC4Hibernate/delStudent/${student.id}">删除</a>
								&nbsp;
								<a href="/SpringMVC4Hibernate/initEditStudent/${student.id}">编辑</a>
							</th>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="row">
			<a href="/SpringMVC4Hibernate/initAddStudent" class="btn btn-success">添加</a>
		</div>
	</div>

</body>
</html>