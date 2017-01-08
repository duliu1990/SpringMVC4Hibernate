<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<spring:url value="/resources/css/jquery-ui.css" var="jqueryui" />
<link href="${jqueryui}" rel="stylesheet" />

<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />

<spring:url value="/resources/js/jquery-1.12.4.min.js" var="jquery" />
<spring:url value="/resources/js/jquery-ui.js" var="jqueryui" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${jquery}"></script>
<script src="${jqueryui}"></script>
<script src="${bootstrapJs}"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Index</title>
</head>
<body>
	<div class="container">
		<form:form id="addStudent" action="addStudent" method="POST"  modelAttribute="student">
			<div class="row form-horizontal">
				<div class="form-group">
				    <div class="col-lg-12 col-md-12 col-sm-12">
				    	<c:if test="${id != null}">
				    		<h1>修改学生信息</h1>
				    	</c:if>
				    	<c:if test="${id == null}">
				    		<h1>添加学生信息</h1>
				    	</c:if>
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-lg-2 col-md-2 col-sm-2">
				    	<label>ID</label>
				    </div>
				    <div class="col-lg-6 col-md-6 col-sm-6">
				    	${id }
				    	<form:hidden path="id"/>
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-lg-2 col-md-2 col-sm-2">
				    	<label>姓名</label>
				    </div>
				    <div class="col-lg-6 col-md-6 col-sm-6">
				    	<form:input class="form-control" path="sName"/>
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-lg-2 col-md-2 col-sm-2">
				    	<label>生日</label>
				    </div>
				    <div class="col-lg-6 col-md-6 col-sm-6">
						<form:input id="sBirthDateField" path="sBirth"/>
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-lg-2 col-md-2 col-sm-2">
				    	<label>性别</label>
				    </div>
				    <div class="col-lg-6 col-md-6 col-sm-6">
				    	<form:radiobutton path="sSex" value="M"/>Male
						<form:radiobutton path="sSex" value="F"/>Female
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-lg-2 col-md-2 col-sm-2">
				    	<label>年龄</label>
				    </div>
				    <div class="col-lg-6 col-md-6 col-sm-6">
				    	<form:input class="form-control" path="sAge"/>
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-lg-12 col-md-12 col-sm-12">
				    	<button type="button" id="doStudent" class="btn btn-success">
				    		<c:if test="${id != null}">
				    			更新
				    		</c:if>
				    		<c:if test="${id == null}">
				    			添加
				    		</c:if>
				    	</button>
				    </div>
				</div>
			</div>
		</form:form>
	</div>

	<script>
		 $(function() {
	         $('#sBirthDateField').datepicker({
	        	 dateFormat: "dd/mm/yy"
	         });
	         
	     });
		 
		$("#doStudent").click(function() {
			var id= '${id}' ;
			
			if( id != null && id != '')
				$("#addStudent").attr("action", "http://localhost:7001/SpringMVC4Hibernate/editStudent");
				
			if( id == null || id == '')
				$("#addStudent").attr("action", "addStudent");
			
			
			$("#addStudent").submit(); 
		});
	</script>
</body>
</html>