<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="mainnavbar.jsp" %>

<div class="card">
    <c:out value="${message}"></c:out>
    <br><br>
    <a href="emplogin" class="loginbtn">Login Here</a>
</div>
</body>
</html>