<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<% 
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
    response.sendRedirect("empsessionexpiry");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Home</title>
     
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex flex-col">

    <%@include file="empnavbar.jsp" %>

    <!-- Main Content Area -->
    <div class="flex-1 flex items-center justify-center">
        <h1 class="text-3xl font-bold text-blue-700">
            Welcome <%= emp.getName() %>
        </h1>
    </div>

</body>
</html>
