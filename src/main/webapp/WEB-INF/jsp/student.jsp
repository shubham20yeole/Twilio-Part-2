<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shubham WebPage</title>
</head>
<style>
table {    border-collapse: collapse;    width: 100%;}
th, td {    padding: 8px;    text-align: left;    border-bottom: 1px solid #ddd;}
th {    display: table-cell;    color:white;    vertical-align: inherit;    font-weight: bold;    text-align: center;     border: 1px solid #f2f2f2;      padding: 14px;     background-color: #0088cc;}
tr:hover{background-color:#f5f5f5}
.outDIV{  float:center;   height:330px;    min-height:300px  width:300%;   padding:3px;   color: black;  background:white;}
.inDIV {  height:90%;   overflow:auto;   color:#003366;    background: white;}
::-webkit-scrollbar {background :red;color: red;    width: 0.2em;    height: 0em}
::-webkit-scrollbar-button {    background: #003366;}
::-webkit-scrollbar-track-piece {    background: white;    }
::-webkit-scrollbar-thumb {    background: #0088cc;}
</style>
<body>
<table><tr><td>
<h1>Students Data</h1>
<form:form action="student.do" method="POST" commandName="student">
	<table>
		<tr>
		<td>Student ID</td>
			<td><form:input path="studentId" /></td>
		</tr>
		<tr>
			<td>First name</td>
			<td><form:input path="firstname" /></td>
		</tr>
		<tr>
			<td>Last name</td>
			<td><form:input path="lastname" /></td>
		</tr>
		<tr>
			<td>Year Level</td>
			<td><form:input path="yearLevel" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
</td>
<td>

<div class="outDIV">
<div class="inDIV">
<h1>Users</h1>
<table border="1">
	<th>ID</th>
	<th>Name</th>
	<th>Email</th>
	<th>Sign up Date</th>
	<c:forEach items="${studentList}" var="student">
		<tr>
			<td>${student.studentId}</td>
			<td>${student.firstname} ${student.lastname}</td>
			<td>${student.email}</td>
			<td>${student.createdOn}</td>
		</tr>
	</c:forEach>
</table>
</div>
</div>
</td>
</tr></table>
</body>
</html>