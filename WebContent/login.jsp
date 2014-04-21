<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="userBean" scope="request" class="org.koushik.javabrains.dto.User">
    <jsp:setProperty name="userBean" property="*"/>
</jsp:useBean>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
		<title>User Registration Page</title>
	</head>
	<body>

		<c:forEach items = "${sessionScope}" var = "attr">
			${attr.key} = ${attr.value}
			<br/>
		</c:forEach>
		<br/>
		<c:forEach items = "${requestScope}" var = "attr">
			${attr.key} = ${attr.value}
			<br/>
		</c:forEach>
		<c:out value="${userBean.userName}"/>
		
		<!-- <form action="Process.jsp" method="post">
			<br>User ID: <input type="text" name="userID" />
			<br>UserName: <input type="text" name="userName" />
			<br>Password: <input type="password" name="password" />
			<br>Address Line 1: <input type="text" name="address1" />
			<br>Address Line 2: <input type="text" name="address2" />
			<br>City: <input type="text" name="city" />
			<br>State: <input type="text" name="state" />
			<br>Pincode: <input type="text" name="pincode" />
			<br><input type="submit" />
		</form> -->
		
		<form action="login.jsp" method="post">
		    <br/>
		    User Name: <input type="text" name="userName" value="<c:out value="${userBean.userName}"/>" />
		    <br/>
		    <input type="submit" value="Submit"/>
		</form>
		
	</body>
</html>